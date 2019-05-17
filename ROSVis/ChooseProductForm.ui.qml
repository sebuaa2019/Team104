import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: root
    width: Constants.width
    height: Constants.height
    property alias productAButton: productAButton
    property alias continueButton: continueButton
    property alias productBButton: productBButton

    state: "initial state"

    Rectangle {
        id: rectangle
        color: Constants.backgroundColor
        anchors.fill: parent
    }

    RowLayout {
        x: 115
        y: 225
        width: 794
        height: 252
        spacing: 64

        UserButton {
            id: productAButton
            text: "Product A"
            color: "#ffffff"
            Layout.fillWidth: false
        }

        UserButton {
            id: productBButton
            x: 0
            y: 0
            text: "Product B"
            color: "#ffffff"
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            source: "images/icons/coffees/Macchiato.png"
        }
    }

    Text {
        id: buyLabel
        x: 84
        y: 26
        color: "#ffffff"
        text: qsTr("Please choose a product")
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: Constants.fontFamily
        wrapMode: Text.WrapAnywhere
        font.pixelSize: 64
        font.capitalization: Font.AllUppercase
    }

    NavigationButton {
        id: continueButton
        x: 324
        y: 650
        text: "Continue"
        anchors.bottomMargin: Constants.defaultMargin
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
    }
}
