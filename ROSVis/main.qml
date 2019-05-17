import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGamepad 1.0
import QtDataVisualization 1.0
import "."

ApplicationWindow {
    visible: true
    width: Constants.width
    height: Constants.height
    title: qsTr("ROSVis")

    ApplicationFlow {
    }

    Gamepad {
        id: gamepad1
        deviceId: GamepadManager.connectedGamepads.length > 0 ? GamepadManager.connectedGamepads[0] : -1
    }

    Connections {
        target: GamepadManager
        onGamepadConnected: gamepad1.deviceId = deviceId
    }

    GamepadKeyNavigation {
        id: gamepadKeyNavigation
        gamepad: gamepad1
        active: true
        buttonL1Key: Qt.Key_Q
    }

    GamepadKeyNavigation {
        id: gamepadKeyNavigation2
        gamepad: gamepad1
        active: true
        buttonR1Key: Qt.Key_E
    }
}
