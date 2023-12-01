#include "rndsrv.h"

RndSrv::RndSrv(QWidget *parent)
:QDialog(parent)
,clientscountWidget(new QLabel)
,eventListWidget(new QListWidget)
,tcpServer(5000, this)
{
    auto clientscountLabel = new QLabel(tr("Threads:"));
    clientscountLabel->setBuddy(clientscountWidget);
    auto eventLabel = new QLabel(tr("Events:"));
    eventLabel->setBuddy(eventListWidget);

    QGridLayout *mainLayout = new QGridLayout(this);
    setLayout(mainLayout);
    mainLayout->addWidget(clientscountLabel, 0, 0);
    mainLayout->addWidget(clientscountWidget, 0, 1);
    mainLayout->addWidget(eventLabel, 1, 0);
    mainLayout->addWidget(eventListWidget, 2, 0, 1, 2);

    std::string s{"RndSrv constructed"};
    PutEvent(&s);
    ConnectionCount(0);
}

RndSrv::~RndSrv() = default;

void RndSrv::ConnectionCount(int count)
{
    clientscountWidget->setText(QString::number(count));
}

void RndSrv::PutEvent(std::string* s)
{
    if(eventListWidget->count() >= 10)
        delete eventListWidget->takeItem(0);
    eventListWidget->addItem(QString(s->c_str()));
}
