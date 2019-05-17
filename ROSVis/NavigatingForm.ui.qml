import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: root
    width: Constants.width
    height: Constants.height
    clip: true
    property string coffeeName: qsTr("Cappucino")
    property alias map: map

    state: "initial state"

    Rectangle {
        id: rectangle
        color: Constants.backgroundColor
        anchors.fill: parent

        Map {
            id: map
            x: 256
            y: 96
            anchors.horizontalCenterOffset: 150
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Text {
        id: buyLabel

        color: "#ffffff"
        text: "Navigating..."
        anchors.topMargin: Constants.defaultMargin
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: Constants.fontFamily
        wrapMode: Text.WrapAnywhere
        font.pixelSize: 64
        font.capitalization: Font.AllUppercase
    }
    states: [
        State {
            name: "navigating"

            PropertyChanges {
                target: map
            }
        },
        State {
            name: "takeitem"
            PropertyChanges {
                target: map
            }

            PropertyChanges {
                target: buyLabel
                text: "Done!"
            }
        }
    ]
}
