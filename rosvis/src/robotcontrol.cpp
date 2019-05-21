#include "../include/rosvis/robotcontrol.hpp"
#include "ui_robotcontrol.h"
#include <iostream>
#include <fstream>
#include <QFile>
#include <QTextStream>
#include <QDir>

#include <QGridLayout>
#include <QVBoxLayout>

RobotControl::RobotControl(QWidget *parent) :
  QDialog(parent),
  ui(new Ui::RobotControl)
{
  ui->setupUi(this);
  QWidget *pic = new QWidget(this);
  pic->setStyleSheet("background-image: url(/home/robot/team104_temp/image.pmp); background-repeat: no-repeat; background-position: center center fixed");
  pic->setGeometry(QRect(76,146,590,400));
}

RobotControl::~RobotControl()
{
  delete ui;
}

void RobotControl::writeToFile(const QString& stat)
{
  QString path= "/home/robot/team104_temp/";
  QDir dir;
    QFile file(path + "movement.txt");
  if(!dir.exists(path))
  {
    dir.mkpath(path);
  }
    if (file.open(QIODevice::WriteOnly | QIODevice::Text))
    {
    QTextStream in(&file);
    in << stat;
    }
  file.close();
}

void RobotControl::on_yButton_clicked()
{
  writeToFile("0");
}

void RobotControl::on_xButton_clicked()
{
  writeToFile("2");
}

void RobotControl::on_bButton_clicked()
{
  writeToFile("3");
}

void RobotControl::on_aButton_clicked()
{
  writeToFile("1");
}

void RobotControl::on_lButton_clicked()
{
  writeToFile("4");
}

void RobotControl::on_rButton_clicked()
{
  writeToFile("5");
}
