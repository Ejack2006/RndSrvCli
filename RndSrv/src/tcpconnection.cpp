#include "tcpconnection.h"

TCPConnection::TCPConnection(const int sock, QObject *parent, const std::function<void (int)> f)
:connectionLoopThread([this, sock, parent](){connectionLoop(sock, parent);})
,stopEvent(eventfd(0,0))
,onBreak(f)
{

}

TCPConnection::~TCPConnection()
{
    uint64_t val = 1;
    write(stopEvent, &val, sizeof(val));
    connectionLoopThread.detach();
    close(stopEvent);
}

void TCPConnection::connectionLoop(const int sock, QObject* parent)
{
    std::string eventString;
    eventString.reserve(1024);

    int iRes;
	int iTimeout = 0;
	pollfd fdSockSet[2] = {{stopEvent, POLLIN, 0},{sock, POLLIN, 0}};
	char pBuf[10240];

	// Основной цикл соединения
	while(!fdSockSet[0].revents)
	{
        fdSockSet[1].revents = 0;
        iRes = poll(fdSockSet, 2, 10000);
		if(!fdSockSet[1].revents) break;

		iTimeout = 0;
		// Чтение сокета и выдача ответа
		iRes = recv(sock, pBuf, 1024, 0);
		if(iRes <= 0) break;

		eventString.assign(pBuf, iRes);
		eventString += " - Recieved from sock ";
		eventString += std::to_string(sock);
		QMetaObject::invokeMethod(parent, "PutEvent",
								  Qt::BlockingQueuedConnection,
							Q_ARG(std::string*, &eventString));

		randomString(eventString);
		iRes = send(sock, eventString.c_str(), eventString.size(), 0);
		if(iRes <= 0) break;

		eventString += " - Sended to sock ";
		eventString += std::to_string(sock);
		QMetaObject::invokeMethod(parent, "PutEvent",
								  Qt::BlockingQueuedConnection,
							Q_ARG(std::string*, &eventString));
	}

    shutdown(sock, SHUT_RDWR);
    close(sock);

    onBreak(sock);
}

void randomString(std::string& s)
{
    static std::string charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    s.resize(std::rand()%10+1);

    for (int i = 0; i < s.size(); i++)
        s[i] = charset[std::rand() % charset.length()];
}
