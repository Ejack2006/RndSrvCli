#ifndef TCPCONNECTION_H
#define TCPCONNECTION_H

#include <QObject>
#include <QMetaObject>
#include <thread>
#include <string>
#include <mutex>
#include <condition_variable>
#include <functional>
#include "sys/socket.h"
#include "sys/eventfd.h"
#include "unistd.h"
#include "poll.h"

class TCPConnection
{
public:
    TCPConnection(const int sock, QObject *parent, const std::function<void (int)> f);
    ~TCPConnection();

private:
    std::thread connectionLoopThread;
    void connectionLoop(const int sock, QObject* parent);
    volatile int stopEvent = 0;

    std::function<void (int)> onBreak;
};

void randomString(std::string& s);

#endif // TCPCONNECTION_H
