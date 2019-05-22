#include "../include/rosvis/robotcontrol.hpp"
#include "../include/rosvis/buyproduct.hpp"
#include "ui_robotcontrol.h"
#include <iostream>
#include <fstream>
#include <QFile>
#include <QTextStream>
#include <QDir>
#include <QTimer>
#include <QProcess>

RobotControl::RobotControl(QWidget *parent) :
  QDialog(parent),
  ui(new Ui::RobotControl)
{
  ui->setupUi(this);

  QPixmap mapPic ("/home/javiera/team104_temp/image.png");
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
  QPixmap mapPic ("/home/javiera/team104_temp/image.png");
  ui->pic->setPixmap(mapPic);
  ui->pic->repaint();
}

void RobotControl::writeToFile(const QString& stat)
{
  QString path= "/home/javiera/team104_temp/";
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
  //QProcess builder;
  //builder.start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_forward");
}

void RobotControl::on_xButton_clicked()
{
  writeToFile("2");
  //QProcess builder;
  //builder.start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_left");
}

void RobotControl::on_bButton_clicked()
{
  writeToFile("3");
  //QProcess builder;
  //builder.start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_right");
}

void RobotControl::on_aButton_clicked()
{
  writeToFile("1");
  //QProcess builder;
  //builder.start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_backward");
}

void RobotControl::on_lButton_clicked()
{
  writeToFile("4");
  //QProcess builder;
  //builder.start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_turnleft");
}

void RobotControl::on_rButton_clicked()
{
  writeToFile("5");
  //QProcess builder;
  //builder.start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_turnright");
}

void RobotControl::on_buyButton_clicked()
{
  BuyProduct buyProduct;
  buyProduct.setModal(true);
  buyProduct.exec();
}
