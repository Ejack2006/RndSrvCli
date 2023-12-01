#include "tcpserver.h"

TCPServer::TCPServer(int port, QObject *parent)
:acceptLoopThread([this, port, parent](){acceptLoop(port, parent);})
,stopEvent(eventfd(0,0))
{

}

TCPServer::~TCPServer()
{
    uint64_t val = 1;
    write(stopEvent, &val, sizeof(val));
    acceptLoopThread.detach();
    close(stopEvent);
}

void TCPServer::acceptLoop(int port, QObject* parent)
{
    std::string eventString;
    eventString.reserve(1024);
    std::map<int, TCPConnection> connectionMap;

    eventString.assign("TCPServer thread started");
    QMetaObject::invokeMethod(parent, "PutEvent",
                          Qt::BlockingQueuedConnection,
                          Q_ARG(std::string*, &eventString));

    int sock;
    int iRes;
	pollfd fdSockSet[2] = {{stopEvent, POLLIN, 0},{0, POLLIN, 0}};
	sockaddr_in sa;
	sockaddr_in ra;

	sock = socket(AF_INET, SOCK_STREAM, 0);
	memset(&sa, 0, sizeof(sa));
	memset(&ra, 0, sizeof(ra));
	socklen_t iralenght = sizeof(sockaddr_in);
	sa.sin_family = AF_INET;
	sa.sin_port = htons(port);
	sa.sin_addr.s_addr = INADDR_ANY;
	bind(sock, (sockaddr*)&sa, sizeof(sa));
	listen(sock, 10);

    fdSockSet[1].fd = sock;
	while(!fdSockSet[0].revents)
	{
        fdSockSet[1].revents = 0;
        iRes = poll(fdSockSet, 2, 1000);
		if(fdSockSet[1].revents)
		{
            iRes = accept(sock, (sockaddr*)&ra, &iralenght);
            if(iRes >= 0)
            {
                connectionMap.emplace(
                    std::piecewise_construct,
                    std::forward_as_tuple(iRes),
                    std::forward_as_tuple(iRes,
                                          parent,
                                          [this](int sock){onBreak(sock);}
                                          )
                );

                eventString.assign("socket-");
                eventString += std::to_string(iRes);
                eventString += " connected";
                QMetaObject::invokeMethod(parent, "PutEvent",
                                          Qt::BlockingQueuedConnection,
                                          Q_ARG(std::string*, &eventString));

                QMetaObject::invokeMethod(parent, "ConnectionCount",
                                          Qt::BlockingQueuedConnection,
                                          Q_ARG(int, connectionMap.size()));
            }
		}

        std::unique_lock<std::mutex> lcv(mv);
		for(auto i : toDelete)
        {
            connectionMap.erase(i);
            eventString.assign("socket-");
            eventString += std::to_string(i);
            eventString += " disconnected";
            QMetaObject::invokeMethod(parent, "PutEvent",
                                      Qt::BlockingQueuedConnection,
                                      Q_ARG(std::string*, &eventString));

            QMetaObject::invokeMethod(parent, "ConnectionCount",
                                      Qt::BlockingQueuedConnection,
                                      Q_ARG(int, connectionMap.size()));
        }
        toDelete.clear();
	}

    shutdown(sock, SHUT_RDWR);
    close(sock);
}
void TCPServer::onBreak(int s)
{
    std::unique_lock<std::mutex> lcv(mv);
    toDelete.push_back(s);
}
