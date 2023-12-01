#include "rndcli.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    qRegisterMetaType<std::string*>();
    RndCli w;
    w.show();

    return app.exec();
}

