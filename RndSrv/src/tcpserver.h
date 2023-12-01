#ifndef TCPSERVER_H
#define TCPSERVER_H

#include <QObject>
#include <QMetaObject>
#include <thread>
#include <chrono>
#include <string>
#include <mutex>
#include <condition_variable>
#include <map>
#include <tuple>
#include <utility>
#include "sys/socket.h"
#include "sys/eventfd.h"
#include "netinet/in.h"
#include "unistd.h"
#include "poll.h"

#include "tcpconnection.h"

class TCPServer
{
public:
    TCPServer(int port, QObject *parent);
    ~TCPServer();

    void onBreak(int s);

private:
    std::thread acceptLoopThread;
    void acceptLoop(int port, QObject* parent);
    volatile int stopEvent = 0;

    std::vector<int> toDelete;
    std::mutex mv;
};

#endif // TCPSERVER_H
