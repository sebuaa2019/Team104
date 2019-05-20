#include "../include/rosvis/buyproduct.hpp"
#include "ui_buyproduct.h"
//#include "wpb_home_apps/team104_shopping.h"
#include <iostream>
#include <fstream>
#include <QFile>
#include <QTextStream>
#include <QDir>


BuyProduct::BuyProduct(QWidget *parent) :
  QDialog(parent),
  ui(new Ui::BuyProduct)
{
  ui->setupUi(this);
}

BuyProduct::~BuyProduct()
{
  delete ui;
}

void BuyProduct::on_takeButton_clicked()
{
  //change_status(2);
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
		in << "2";
  	}
	file.close();
}
