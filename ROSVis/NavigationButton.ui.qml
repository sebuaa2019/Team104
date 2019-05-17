import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Row {
    id: row

    signal clicked

    property alias text: buyLabel.text

    property bool forward: true
    layoutDirection: row.forward ? Qt.LeftToRight : Qt.RightToLeft

    spacing: 17

    Text {
        id: buyLabel
        color: "#ffffff"
        text: qsTr("Navigate")
        font.family: Constants.fontFamily
        wrapMode: Text.WrapAnywhere
        font.pixelSize: 64
        font.capitalization: Font.AllUppercase
    }

    Image {
        id: image

        anchors.verticalCenter: parent.verticalCenter
        source: row.forward ? "images/ui controls/buttons/go/white.png" : "images/ui controls/buttons/back/white.png"
        scale: mouseArea.containsMouse ? 1.1 : 1
        MouseArea {
            id: mouseArea
            hoverEnabled: true

            anchors.fill: parent
            Connections {
                target: mouseArea
                onClicked: row.clicked()
            }
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
