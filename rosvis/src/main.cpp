/**
 * @file /src/main.cpp
 *
 * @brief Qt based gui.
 *
 * @date November 2010
 **/
/*****************************************************************************
** Includes
*****************************************************************************/

#include <QtGui>
#include <QApplication>
#include <QProcess>
#include "../include/rosvis/main_window.hpp"

/*****************************************************************************
** Main
*****************************************************************************/

int main(int argc, char **argv) {

    QProcess *builder = new QProcess();
    //builder->start("bash", QStringList() << "-c" << "roslaunch wpb_home_apps shopping.launch");
    /*********************
    ** Qt
    **********************/
    QApplication app(argc, argv);

    rosvis::MainWindow w(argc,argv);
    w.show();
    app.connect(&app, SIGNAL(lastWindowClosed()), &app, SLOT(quit()));
    int result = app.exec();

    return result;
}
