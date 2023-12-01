#ifndef RNDCLI_H
#define RNDCLI_H

#include <QtWidgets>
#include <QString>
#include <QtNetwork>
#include <QHostAddress>
#include <list>
#include <string>

#include "tcpclient.h"

Q_DECLARE_OPAQUE_POINTER(std::string);
Q_DECLARE_METATYPE(std::string*);

class RndCli : public QDialog
{
    Q_OBJECT

public:
    explicit RndCli(QWidget *parent = nullptr);
    ~RndCli() override;

// protected:
//     void closeEvent(QCloseEvent *event) override;

public:
    Q_INVOKABLE void PutEvent(std::string* s);

public slots:
    void newThreads();

private:
    QComboBox *hostCombo = nullptr;
    QLineEdit *portLineEdit = nullptr;
    QLineEdit *threadsLineEdit = nullptr;
    QListWidget *eventListWidget = nullptr;

    std::list<TCPClient> clients;
};

#endif // RNDCLI_H
