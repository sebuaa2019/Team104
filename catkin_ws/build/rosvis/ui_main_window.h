/********************************************************************************
** Form generated from reading UI file 'main_window.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAIN_WINDOW_H
#define UI_MAIN_WINDOW_H

#include <QtCore/QLocale>
#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QMainWindow>
#include <QtGui/QMenu>
#include <QtGui/QMenuBar>
#include <QtGui/QPushButton>
#include <QtGui/QStatusBar>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindowDesign
{
public:
    QWidget *centralwidget;
    QPushButton *adminButton;
    QPushButton *userButton;
    QLabel *adminLabel;
    QLabel *label;
    QLabel *label_2;
    QMenuBar *menubar;
    QMenu *menu_File;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindowDesign)
    {
        if (MainWindowDesign->objectName().isEmpty())
            MainWindowDesign->setObjectName(QString::fromUtf8("MainWindowDesign"));
        MainWindowDesign->resize(944, 704);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/icon.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindowDesign->setWindowIcon(icon);
        MainWindowDesign->setStyleSheet(QString::fromUtf8("background-color: rgb(238, 193, 162);"));
        MainWindowDesign->setLocale(QLocale(QLocale::English, QLocale::Australia));
        centralwidget = new QWidget(MainWindowDesign);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        adminButton = new QPushButton(centralwidget);
        adminButton->setObjectName(QString::fromUtf8("adminButton"));
        adminButton->setGeometry(QRect(130, 140, 251, 251));
        QFont font;
        font.setFamily(QString::fromUtf8("Sans"));
        font.setPointSize(18);
        font.setBold(true);
        font.setWeight(75);
        adminButton->setFont(font);
        adminButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/cappucino.png);"));
        adminButton->setFlat(true);
        userButton = new QPushButton(centralwidget);
        userButton->setObjectName(QString::fromUtf8("userButton"));
        userButton->setGeometry(QRect(570, 150, 251, 251));
        QFont font1;
        font1.setFamily(QString::fromUtf8("Sans"));
        font1.setBold(true);
        font1.setWeight(75);
        userButton->setFont(font1);
        userButton->setStyleSheet(QString::fromUtf8("background-image: url(:/images/Macchiato.png);"));
        userButton->setFlat(true);
        adminLabel = new QLabel(centralwidget);
        adminLabel->setObjectName(QString::fromUtf8("adminLabel"));
        adminLabel->setGeometry(QRect(200, 410, 111, 61));
        QFont font2;
        font2.setFamily(QString::fromUtf8("DejaVu Sans"));
        font2.setPointSize(18);
        font2.setBold(true);
        font2.setWeight(75);
        adminLabel->setFont(font2);
        adminLabel->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        adminLabel->setAlignment(Qt::AlignCenter);
        label = new QLabel(centralwidget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(640, 420, 101, 41));
        label->setFont(font2);
        label->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        label->setAlignment(Qt::AlignCenter);
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setGeometry(QRect(300, 490, 351, 71));
        QFont font3;
        font3.setFamily(QString::fromUtf8("Sans"));
        font3.setPointSize(22);
        font3.setBold(true);
        font3.setWeight(75);
        label_2->setFont(font3);
        label_2->setAlignment(Qt::AlignCenter);
        MainWindowDesign->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindowDesign);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 944, 22));
        menu_File = new QMenu(menubar);
        menu_File->setObjectName(QString::fromUtf8("menu_File"));
        MainWindowDesign->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindowDesign);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindowDesign->setStatusBar(statusbar);

        menubar->addAction(menu_File->menuAction());
        menu_File->addSeparator();
        menu_File->addSeparator();

        retranslateUi(MainWindowDesign);

        QMetaObject::connectSlotsByName(MainWindowDesign);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindowDesign)
    {
        MainWindowDesign->setWindowTitle(QApplication::translate("MainWindowDesign", "ROSVis", 0, QApplication::UnicodeUTF8));
        adminButton->setText(QString());
        userButton->setText(QString());
        adminLabel->setText(QApplication::translate("MainWindowDesign", "Admin", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("MainWindowDesign", "User", 0, QApplication::UnicodeUTF8));
        label_2->setText(QApplication::translate("MainWindowDesign", "Choose User Type", 0, QApplication::UnicodeUTF8));
        menu_File->setTitle(QApplication::translate("MainWindowDesign", "&App", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindowDesign: public Ui_MainWindowDesign {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAIN_WINDOW_H
