import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.0

Item {
    id: root

    width: Constants.width + Constants.leftSideBarWidth
    height: Constants.height

    property alias keypressed: keypressed
    property alias buyButtonSelection: buyButtonSelection
    property bool selected: false
    property alias buyButton: buyButton
    property alias sideBar: sideBar
    property alias backButton: backButton

    property alias r1Button: r1Button
    property alias r2Button: r2Button
    property alias buttonA: buttonA
    property alias buttonB: buttonB
    property alias buttonX: buttonX
    property alias buttonY: buttonY

    property bool inSettings: false

    state: "initial state"

    Rectangle {
        id: rectangle
        color: Constants.backgroundColor
        anchors.fill: parent
    }

    Rectangle {
        id: rightSideBar

        x: 658
        y: 0
        width: Constants.leftSideBarWidth
        height: 768
        color: "#eec1a2"
        visible: false
        anchors.right: parent.right

        Text {
            id: keypressed
            text: qsTr("Press a navigation button")
            anchors.centerIn: parent
            focus: true
        }

        RowLayout {
            id: rowLayout
            width: 794
            height: 252
            spacing: 50
            anchors.centerIn: parent
            ButtonImage {
                id: r1Button
                source: "images/buttons/xboxControllerLeftShoulder.png"
                active: gamepad1.buttonL1
            }

            ButtonImage {
                id: r2Button
                source: "images/buttons/xboxControllerRightShoulder.png"
                active: gamepad1.buttonR1
            }
        }

        Item {
            id: element
            width: 200
            height: 200
            anchors.centerIn: parent
            ButtonImage {
                id: buttonA
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/buttons/xboxControllerButtonA.png"
                active: gamepad1.buttonDown
            }
            ButtonImage {
                id: buttonB
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                source: "images/buttons/xboxControllerButtonB.png"
                active: gamepad1.buttonRight
            }
            ButtonImage {
                id: buttonX
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                source: "images/buttons/xboxControllerButtonX.png"
                active: gamepad1.buttonLeft
            }
            ButtonImage {
                id: buttonY
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/buttons/xboxControllerButtonY.png"
                active: gamepad1.buttonUp
            }
        }

        NavigationButton {
            id: buyButton

            text: "Buy"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.rightMargin: Constants.defaultMargin
            anchors.bottomMargin: Constants.defaultMargin
        }
    }

    SideBar {
        id: sideBar
        width: Constants.leftSideBarWidth
    }

    states: [
        State {
            name: "initial state"
            when: !root.selected && !root.inSettings
        },
        State {
            name: "selected state"
            when: root.selected

            PropertyChanges {
                target: map
                visible: true
            }

            PropertyChanges {
                target: buyButton
                visible: true
            }

            PropertyChanges {
                target: buyButtonSelection
                visible: true
            }
        },
        State {
            name: "settings"
            when: root.inSettings
            PropertyChanges {
                target: map
                x: 354
                y: 0
                visible: true
            }

            PropertyChanges {
                target: buyButton
                visible: true
            }

            PropertyChanges {
                target: backButton
                opacity: 1
            }

            PropertyChanges {
                target: rightSideBar
                visible: true
            }

            PropertyChanges {
                target: rowLayout
                x: -200
                y: -380
                width: 500
                height: 75
                anchors.verticalCenterOffset: -221
                anchors.horizontalCenterOffset: 0
                spacing: 50
            }

            PropertyChanges {
                target: r1Button
                width: 150
                height: 75
            }

            PropertyChanges {
                target: r2Button
                width: 150
                height: 75
            }

            PropertyChanges {
                target: element
                x: -10
                y: 0
            }

            PropertyChanges {
                target: keypressed
                color: "#000000"
                font.pointSize: 18
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: -333
            }
        }
    ]

    Map {
        id: map
        anchors.right: rightSideBar.left
        anchors.left: sideBar.right
        visible: true
    }
    NavigationButton {
        id: backButton
        text: "Back"
        opacity: 0
        anchors.leftMargin: Constants.defaultMargin
        anchors.bottom: parent.bottom
        anchors.left: sideBar.right
        anchors.bottomMargin: Constants.defaultMargin
        forward: false
    }

    NavigationButton {
        id: buyButtonSelection

        anchors.left: sideBar.right
        anchors.leftMargin: Constants.defaultMargin
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Constants.defaultMargin
        visible: false
    }
}
