/**
 * @file /src/main_window.cpp
 *
 * @brief Implementation for the qt gui.
 *
 * @date February 2011
 **/
/*****************************************************************************
** Includes
*****************************************************************************/

#include <QtGui>
#include <QMessageBox>
#include <iostream>
#include "../include/rosvis/main_window.hpp"
#include "../include/rosvis/robotcontrol.hpp"
#include "../include/rosvis/buyproduct.hpp"
#include <wpb_home_apps/team104_shopping.h>
#include <QFile>
#include <QDir>

/*****************************************************************************
** Namespaces
*****************************************************************************/

namespace rosvis {

using namespace Qt;

/*****************************************************************************
** Implementation [MainWindow]
*****************************************************************************/

MainWindow::MainWindow(int argc, char** argv, QWidget *parent)
	: QMainWindow(parent)
	, qnode(argc,argv)
{
    ui.setupUi(this); // Calling this incidentally connects all ui's triggers to on_...() callbacks in this class.
}

MainWindow::~MainWindow() {}

/*****************************************************************************
** Implementation [Slots]
*****************************************************************************/

void MainWindow::closeEvent(QCloseEvent *event)
{
	QMainWindow::closeEvent(event);
}

void MainWindow::on_adminButton_clicked()
{
	RobotControl robotControl;
        robotControl.setModal(true);
  	/*wpb_home_apps *wha = new wpb_home_apps::team104_shopping;
        wha->change_status(1);*/
	QString path= "/home/javiera/team104_temp/";
	QDir dir;
  	QFile file(path + "status.txt");
	if(!dir.exists(path))
	{
		dir.mkpath(path);
	}
  	if (file.open(QIODevice::WriteOnly | QIODevice::Text))
  	{
		QTextStream in(&file);
		in << "1";
  	}
  	file.close();
  robotControl.exec();
}

void MainWindow::on_userButton_clicked()
{
	BuyProduct buyProduct;
	buyProduct.setModal(true);
	buyProduct.exec();
}
}  // namespace rosvis

