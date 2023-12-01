#include "rndcli.h"

RndCli::RndCli(QWidget *parent)
:QDialog(parent)
,hostCombo(new QComboBox)
,portLineEdit(new QLineEdit)
,threadsLineEdit(new QLineEdit)
,eventListWidget(new QListWidget)
{
    hostCombo->setEditable(true);
    QList<QHostAddress> ipAddressesList = QNetworkInterface::allAddresses();
    for (int i = 0; i < ipAddressesList.size(); ++i) {
        if (ipAddressesList.at(i).isLoopback())
            hostCombo->addItem(ipAddressesList.at(i).toString());
    }

    portLineEdit->setValidator(new QIntValidator(1, 65535, this));
    threadsLineEdit->setValidator(new QIntValidator(0, 100, this));

    auto hostLabel = new QLabel(tr("Server name:"));
    hostLabel->setBuddy(hostCombo);
    auto portLabel = new QLabel(tr("Server port:"));
    portLabel->setBuddy(portLineEdit);
    auto threadsLabel = new QLabel(tr("Thread count:"));
    threadsLabel->setBuddy(threadsLineEdit);
    auto eventLabel = new QLabel(tr("Events:"));
    eventLabel->setBuddy(eventListWidget);

    QGridLayout *mainLayout = new QGridLayout(this);
    setLayout(mainLayout);
    mainLayout->addWidget(hostLabel, 0, 0);
    mainLayout->addWidget(hostCombo, 0, 1);
    mainLayout->addWidget(portLabel, 1, 0);
    mainLayout->addWidget(portLineEdit, 1, 1);
    mainLayout->addWidget(threadsLabel, 2, 0);
    mainLayout->addWidget(threadsLineEdit, 2, 1);
    mainLayout->addWidget(eventLabel, 3, 0);
    mainLayout->addWidget(eventListWidget, 4, 0, 1, 2);

    connect(threadsLineEdit, &QLineEdit::returnPressed, this, &RndCli::newThreads);
    std::string s{"RndCli constructed"};
    PutEvent(&s);
    portLineEdit->setText("5000");
    threadsLineEdit->setText("0");
}

RndCli::~RndCli() = default;

// void RndCli::closeEvent(QCloseEvent *event)
// {
//     clients.clear();
//     event->accept();
// }

void RndCli::PutEvent(std::string* s)
{
    if(eventListWidget->count() >= 10)
        delete eventListWidget->takeItem(0);
    eventListWidget->addItem(QString(s->c_str()));
}

void RndCli::newThreads()
{
    int count = threadsLineEdit->text().toInt();
    while(clients.size()<count)
        clients.emplace_back(
            hostCombo->currentText().toStdString()
            ,portLineEdit->text().toInt()
            ,this
        );
    while(clients.size()>count)
        clients.pop_back();
}
