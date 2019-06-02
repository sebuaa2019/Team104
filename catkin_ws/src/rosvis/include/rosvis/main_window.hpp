/**
 * @file /include/rosvis/main_window.hpp
 *
 * @brief Qt based gui for rosvis.
 *
 * @date November 2010
 **/
#ifndef rosvis_MAIN_WINDOW_H
#define rosvis_MAIN_WINDOW_H

/*****************************************************************************
** Includes
*****************************************************************************/

#include <QtGui/QMainWindow>
#include "ui_main_window.h"
#include "qnode.hpp"

/*****************************************************************************
** Namespace
*****************************************************************************/

namespace rosvis {

/*****************************************************************************
** Interface [MainWindow]
*****************************************************************************/
/**
 * @brief Qt central, all operations relating to the view part here.
 */
class MainWindow : public QMainWindow {
Q_OBJECT

public:
	MainWindow(int argc, char** argv, QWidget *parent = 0);
	~MainWindow();

	void ReadSettings(); // Load up qt program settings at startup
	void WriteSettings(); // Save qt program settings when closing

	void closeEvent(QCloseEvent *event); // Overloaded function
	void showNoMasterMessage();

public Q_SLOTS:
	void on_adminButton_clicked();
  void on_userButton_clicked();

private:
	Ui::MainWindowDesign ui;
	QNode qnode;
};

}  // namespace rosvis

#endif // rosvis_MAIN_WINDOW_H