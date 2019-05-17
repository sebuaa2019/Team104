import QtQuick 2.4

ChooseProductForm {
    id: productChoose
    property string currentProduct: qsTr("Product A")
    signal productSelected

    productBButton.onClicked: {
        productChoose.currentProduct = qsTr("Product B")
        productChoose.productSelected()
    }

//! [0]
    productAButton.onClicked: {
        productChoose.currentProduct = qsTr("Product A")
        productChoose.productSelected()
    }
//! [0]
}
