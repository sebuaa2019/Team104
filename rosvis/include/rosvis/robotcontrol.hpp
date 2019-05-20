#ifndef ROBOTCONTROL_H
#define ROBOTCONTROL_H

#include <QDialog>

namespace Ui {
class RobotControl;
}

class RobotControl : public QDialog
{
  Q_OBJECT

public:
  explicit RobotControl(QWidget *parent = 0);
  ~RobotControl();
  void writeToFile(const QString& stat);

public Q_SLOTS:
  void on_yButton_clicked();

  void on_xButton_clicked();

  void on_bButton_clicked();

  void on_aButton_clicked();

  void on_lButton_clicked();

  void on_rButton_clicked();

private:
  Ui::RobotControl *ui;
};

#endif // ROBOTCONTROL_H
