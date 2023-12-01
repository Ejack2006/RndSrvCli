#include "tcpclient.h"

TCPClient::TCPClient(const std::string& addr, const int port, QObject *parent)
:clientLoopThread([this, addr, port, parent](){clientLoop(addr, port, parent);})
,stopEvent(eventfd(0,0))
{

}

TCPClient::~TCPClient()
{
    uint64_t val = 1;
    write(stopEvent, &val, sizeof(val));
    clientLoopThread.detach();
    close(stopEvent);
}

void TCPClient::clientLoop(const std::string& addr, const int port, QObject* parent)
{
    std::string eventString;
    eventString.reserve(1024);

    eventString.assign("TCPClient thread started");
    QMetaObject::invokeMethod(parent, "PutEvent",
                          Qt::BlockingQueuedConnection,
                          Q_ARG(std::string*, &eventString));

	sockaddr_in ra;
	int iRes, iPacks;
	pollfd fdSockSet[2] = {{stopEvent, POLLIN, 0},{0, POLLIN, 0}};
	char pBuf[10240];

	memset(&ra, 0, sizeof(ra));
	ra.sin_family = AF_INET;
	ra.sin_port = htons(port);
	ra.sin_addr.s_addr = inet_addr(addr.c_str());

	int sock = -1;

	while(!fdSockSet[0].revents)
	{
        sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if(sock != -1)
        {
            iRes = connect(sock, (sockaddr*)&ra, sizeof(sockaddr_in));
            if(!iRes)
            {
                eventString.assign("socket-");
                eventString += std::to_string(sock);
                eventString += " connected";
                QMetaObject::invokeMethod(parent, "PutEvent",
                                          Qt::BlockingQueuedConnection,
                                          Q_ARG(std::string*, &eventString));

                fdSockSet[1].fd = sock;
                iPacks = rand()%10+1;
                while(iPacks)
                {
                    randomString(eventString);
                    iRes = send(sock, eventString.c_str(), eventString.size(), 0);
                    if(iRes < 0) break;

                    eventString += " - Sended to sock ";
                    eventString += std::to_string(sock);
                    QMetaObject::invokeMethod(parent, "PutEvent",
                                              Qt::BlockingQueuedConnection,
                                              Q_ARG(std::string*, &eventString));

                    fdSockSet[1].revents = 0;
                    iRes = poll(fdSockSet, 2, 1000);
                    if(!fdSockSet[1].revents) break;

                    iRes = recv(sock, pBuf, 1024, 0);
                    if(iRes <= 0) break;

                    eventString.assign(pBuf, iRes);
                    eventString += " - Recieved from sock ";
                    eventString += std::to_string(sock);
                    QMetaObject::invokeMethod(parent, "PutEvent",
                                              Qt::BlockingQueuedConnection,
                                              Q_ARG(std::string*, &eventString));
                    iPacks--;
                    poll(fdSockSet, 1, 1000);
                    if(fdSockSet[0].revents) break;
                }
                shutdown(sock, SHUT_RDWR);

                eventString.assign("socket-");
                eventString += std::to_string(sock);
                eventString += " disconnected";
                QMetaObject::invokeMethod(parent, "PutEvent",
                                          Qt::BlockingQueuedConnection,
                                          Q_ARG(std::string*, &eventString));
            }
            close(sock);
        }
        poll(fdSockSet, 1, rand()%10000);
	}
}

void randomString(std::string& s)
{
    static std::string charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    s.resize(std::rand()%10+1);

    for (int i = 0; i < s.size(); i++)
        s[i] = charset[std::rand() % charset.length()];
}
