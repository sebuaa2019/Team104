import QtQuick 2.4
import QtQuick.Layouts 1.3

Flickable {
    id: flickable
    x: 0
    y: 0
    width: 354
    height: 768

    property alias normaluserButton: normaluserButton
    property alias adminButton: adminButton

    contentWidth: 250
    boundsBehavior: Flickable.StopAtBounds
    contentHeight: 1506
    clip: true

    Rectangle {
        id: background
        x: 0
        width: 354
        height: 1506
        color: "#eec1a2"
    }

    ColumnLayout {
        x: 52
        y: 0
        spacing: 64

        UserButton {
            id: adminButton
            text: "Admin"
        }

        UserButton {
            id: normaluserButton
            text: "Normal User"
            source: "images/icons/coffees/Macchiato.png"
        }
    }
}
