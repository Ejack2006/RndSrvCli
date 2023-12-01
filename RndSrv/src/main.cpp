#include "rndsrv.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    qRegisterMetaType<std::string*>();

    RndSrv w;
    w.show();

    return app.exec();
}

