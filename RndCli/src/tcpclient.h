#ifndef TCPCLIENT_H
#define TCPCLIENT_H

#include <QObject>
#include <QMetaObject>
#include <thread>
#include <chrono>
#include <string>
#include <mutex>
#include <map>
#include <tuple>
#include <utility>
#include "sys/socket.h"
#include "sys/eventfd.h"
#include "netinet/in.h"
#include "arpa/inet.h"
#include "unistd.h"
#include "poll.h"

class TCPClient
{
public:
    TCPClient(const std::string& addr, const int port, QObject *parent);
    ~TCPClient();

private:
    std::thread clientLoopThread;
    void clientLoop(const std::string& addr, const int port, QObject* parent);
    int stopEvent;
};

void randomString(std::string& s);

#endif // TCPCLIENT_H
