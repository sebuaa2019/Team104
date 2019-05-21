#include "../include/rosvis/robotcontrol.hpp"
#include "ui_robotcontrol.h"
#include <iostream>
#include <fstream>
#include <QFile>
#include <QTextStream>
#include <QDir>
#include <QTimer>

RobotControl::RobotControl(QWidget *parent) :
  QDialog(parent),
  ui(new Ui::RobotControl)
{
  ui->setupUi(this);

  QPixmap mapPic ("/home/robot/team104_temp/image.bmp");
  ui->pic->setPixmap(mapPic);
  QTimer *timer = new QTimer(this);
  QObject::connect(timer, SIGNAL(timeout()), this, SLOT(updatePic()));
  timer->start(100);
}

RobotControl::~RobotControl()
{
  delete ui;
}

void RobotControl::updatePic()
{
  QPixmap mapPic ("/home/robot/team104_temp/image.bmp");
  ui->pic->setPixmap(mapPic);
  ui->pic->repaint();
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
  updatePic();
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
