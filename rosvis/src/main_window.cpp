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
#include "../include/rosvis/main_window.hpp"
#include "../include/rosvis/robotcontrol.hpp"
#include "../include/rosvis/buyproduct.hpp"
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
{
    ui.setupUi(this); // Calling this incidentally connects all ui's triggers to on_...() callbacks in this class.
}

MainWindow::~MainWindow() {}

void MainWindow::on_adminButton_clicked()
{
	RobotControl robotControl;
        robotControl.setModal(true);
	QString path= "/home/robot/team104_temp/";
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

