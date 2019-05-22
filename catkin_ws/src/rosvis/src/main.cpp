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
#include <ros/ros.h>

/*****************************************************************************
** Main
*****************************************************************************/

int main(int argc, char **argv) {

    if(!ros::isInitialized())
    {
      ros::init(argc, argv, "rosvis", ros::init_options::AnonymousName);
    }

    QProcess builder;
    builder.start("sh", QStringList() << "-c" << "roslaunch wpb_home_apps shopping.launch; roslaunch my_vel_package vel_ctrl");
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
