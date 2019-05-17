import QtQuick 2.4

//! [0]
NavigatingForm {
    id: root
    function start() {
        animation.start()
    }

    signal finished()

    SequentialAnimation {
        id: animation
        PauseAnimation {
            duration: 1500
        }
        PropertyAction {
            target: root
            property: "state"
            value: "navigating"
        }
        PauseAnimation {
            duration: 1500
        }
        PropertyAction {
            target: root
            property: "state"
            value: "takeitem"
        }
        PauseAnimation {
            duration: 1500
        }
        ScriptAction {
            script: root.finished()
        }
    }
}
//! [0]
