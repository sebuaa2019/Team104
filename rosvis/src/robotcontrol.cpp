#include "../include/rosvis/robotcontrol.hpp"
#include "../include/rosvis/buyproduct.hpp"
#include "ui_robotcontrol.h"
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

  QPixmap mapPic ("/home/robot/team104_temp/image.bmp");
  ui->pic->setPixmap(mapPic);
  QTimer *timer = new QTimer(this);
  QObject::connect(timer, SIGNAL(timeout()), this, SLOT(updatePic()));
  timer->start(1000);
}

RobotControl::~RobotControl()
{
  delete ui;
}

void RobotControl::enableButton()
{
  ui->xButton->setEnabled(true);
  ui->yButton->setEnabled(true);
  ui->aButton->setEnabled(true);
  ui->bButton->setEnabled(true);
  ui->lButton->setEnabled(true);
  ui->rButton->setEnabled(true);
}

void RobotControl::disableButton()
{
  ui->xButton->setEnabled(false);
  ui->yButton->setEnabled(false);
  ui->aButton->setEnabled(false);
  ui->bButton->setEnabled(false);
  ui->lButton->setEnabled(false);
  ui->rButton->setEnabled(false);
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
  disableButton();
  QProcess *builder = new QProcess();
  builder->start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_forward");
  builder->waitForFinished(-1);
  delete builder;
  enableButton();
}

void RobotControl::on_xButton_clicked()
{
  disableButton();
  QProcess *builder = new QProcess();
  builder->start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_left");
  builder->waitForFinished(-1);
  delete builder;
  enableButton();
}

void RobotControl::on_bButton_clicked()
{
  disableButton();
  QProcess *builder = new QProcess();
  builder->start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_right");
  builder->waitForFinished(-1);
  delete builder;
  enableButton();
}

void RobotControl::on_aButton_clicked()
{
  disableButton();
  QProcess *builder = new QProcess();
  builder->start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_backward");
  builder->waitForFinished(-1);
  delete builder;
  enableButton();
}

void RobotControl::on_lButton_clicked()
{
  disableButton();
  QProcess *builder = new QProcess();
  builder->start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_turnleft");
  builder->waitForFinished(-1);
  delete builder;
  enableButton();
}

void RobotControl::on_rButton_clicked()
{
  disableButton();
  QProcess *builder = new QProcess();
  builder->start("bash", QStringList() << "-c" << "rosrun my_vel_package vel_turnright");
  builder->waitForFinished(-1);
  delete builder;
  enableButton();
}

void RobotControl::on_buyButton_clicked()
{
  BuyProduct buyProduct;
  buyProduct.setModal(true);
  buyProduct.exec();
}
