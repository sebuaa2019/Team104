/********************************************************************************
** Form generated from reading UI file 'buyproduct.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_BUYPRODUCT_H
#define UI_BUYPRODUCT_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QDialog>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>

QT_BEGIN_NAMESPACE

class Ui_BuyProduct
{
public:
    QLabel *label;
    QPushButton *takeButton;

    void setupUi(QDialog *BuyProduct)
    {
        if (BuyProduct->objectName().isEmpty())
            BuyProduct->setObjectName(QString::fromUtf8("BuyProduct"));
        BuyProduct->resize(944, 704);
        BuyProduct->setStyleSheet(QString::fromUtf8("background-color: rgb(68, 50, 36);"));
        label = new QLabel(BuyProduct);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(150, 50, 611, 61));
        QFont font;
        font.setFamily(QString::fromUtf8("Sans"));
        font.setPointSize(22);
        font.setBold(true);
        font.setWeight(75);
        label->setFont(font);
        label->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        label->setAlignment(Qt::AlignCenter);
        takeButton = new QPushButton(BuyProduct);
        takeButton->setObjectName(QString::fromUtf8("takeButton"));
        takeButton->setGeometry(QRect(230, 170, 431, 431));
        takeButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/liquid_foam.png);"));
        takeButton->setFlat(true);

        retranslateUi(BuyProduct);

        QMetaObject::connectSlotsByName(BuyProduct);
    } // setupUi

    void retranslateUi(QDialog *BuyProduct)
    {
        BuyProduct->setWindowTitle(QApplication::translate("BuyProduct", "Dialog", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("BuyProduct", "Hello! What do you want to take?", 0, QApplication::UnicodeUTF8));
        takeButton->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class BuyProduct: public Ui_BuyProduct {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_BUYPRODUCT_H
