/********************************************************************************
** Form generated from reading UI file 'robotcontrol.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ROBOTCONTROL_H
#define UI_ROBOTCONTROL_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QDialog>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>

QT_BEGIN_NAMESPACE

class Ui_RobotControl
{
public:
    QPushButton *yButton;
    QPushButton *xButton;
    QPushButton *bButton;
    QPushButton *aButton;
    QPushButton *lButton;
    QPushButton *rButton;
    QLabel *pic;
    QPushButton *buyButton;

    void setupUi(QDialog *RobotControl)
    {
        if (RobotControl->objectName().isEmpty())
            RobotControl->setObjectName(QString::fromUtf8("RobotControl"));
        RobotControl->resize(944, 704);
        RobotControl->setStyleSheet(QString::fromUtf8("background-color: rgb(68, 50, 36);"));
        yButton = new QPushButton(RobotControl);
        yButton->setObjectName(QString::fromUtf8("yButton"));
        yButton->setGeometry(QRect(780, 480, 81, 81));
        yButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/xboxControllerButtonY.png);"));
        yButton->setFlat(true);
        xButton = new QPushButton(RobotControl);
        xButton->setObjectName(QString::fromUtf8("xButton"));
        xButton->setGeometry(QRect(710, 550, 81, 81));
        xButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/xboxControllerButtonX.png);"));
        xButton->setFlat(true);
        bButton = new QPushButton(RobotControl);
        bButton->setObjectName(QString::fromUtf8("bButton"));
        bButton->setGeometry(QRect(850, 550, 81, 81));
        bButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/xboxControllerButtonB.png);"));
        bButton->setFlat(true);
        aButton = new QPushButton(RobotControl);
        aButton->setObjectName(QString::fromUtf8("aButton"));
        aButton->setGeometry(QRect(780, 620, 81, 81));
        aButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/xboxControllerButtonA.png);"));
        aButton->setFlat(true);
        lButton = new QPushButton(RobotControl);
        lButton->setObjectName(QString::fromUtf8("lButton"));
        lButton->setGeometry(QRect(20, 20, 221, 91));
        lButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/xboxControllerLeftShoulder.png);"));
        lButton->setFlat(true);
        rButton = new QPushButton(RobotControl);
        rButton->setObjectName(QString::fromUtf8("rButton"));
        rButton->setGeometry(QRect(710, 20, 221, 91));
        rButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/xboxControllerRightShoulder.png);"));
        rButton->setFlat(true);
        pic = new QLabel(RobotControl);
        pic->setObjectName(QString::fromUtf8("pic"));
        pic->setGeometry(QRect(76, 146, 590, 400));
        pic->setStyleSheet(QString::fromUtf8("background-repeat: no-repeat; "));
        pic->setAlignment(Qt::AlignCenter);
        buyButton = new QPushButton(RobotControl);
        buyButton->setObjectName(QString::fromUtf8("buyButton"));
        buyButton->setGeometry(QRect(790, 310, 81, 81));
        buyButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/white-go.png);\n"
"background-repeat: no-repeat;"));
        buyButton->setFlat(true);

        retranslateUi(RobotControl);

        QMetaObject::connectSlotsByName(RobotControl);
    } // setupUi

    void retranslateUi(QDialog *RobotControl)
    {
        RobotControl->setWindowTitle(QApplication::translate("RobotControl", "Robot Control", 0, QApplication::UnicodeUTF8));
        yButton->setText(QString());
        xButton->setText(QString());
        bButton->setText(QString());
        aButton->setText(QString());
        lButton->setText(QString());
        rButton->setText(QString());
        pic->setText(QString());
        buyButton->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class RobotControl: public Ui_RobotControl {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ROBOTCONTROL_H
