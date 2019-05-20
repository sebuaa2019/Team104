#ifndef BUYPRODUCT_H
#define BUYPRODUCT_H

#include <QDialog>

namespace Ui {
class BuyProduct;
}

class BuyProduct : public QDialog
{
  Q_OBJECT

public:
  explicit BuyProduct(QWidget *parent = 0);
  ~BuyProduct();

public Q_SLOTS:
  void on_takeButton_clicked();

private:
  Ui::BuyProduct *ui;
};

#endif // BUYPRODUCT_H
