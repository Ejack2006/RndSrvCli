#ifndef RNDSRV_H
#define RNDSRV_H

#include <QtWidgets>
#include <QString>
#include <string>

#include "tcpserver.h"

Q_DECLARE_OPAQUE_POINTER(std::string);
Q_DECLARE_METATYPE(std::string*);

class RndSrv : public QDialog
{
    Q_OBJECT

public:
    explicit RndSrv(QWidget *parent = nullptr);
    ~RndSrv() override;

    Q_INVOKABLE void ConnectionCount(int count);
    Q_INVOKABLE void PutEvent(std::string* s);

private:
    QLabel *clientscountWidget = nullptr;
    QListWidget *eventListWidget = nullptr;

    TCPServer tcpServer;
};

#endif // RNDSRV_H
