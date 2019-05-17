import QtQuick 2.4

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    property alias movementControl: movementControl
    property alias navigating: navigating
    property alias chooseProduct: chooseProduct

    color: Constants.backgroundColor

    state: intital

    ChooseProductForm {
        id: chooseProduct
        x: Constants.width
        y: 0
    }

    Navigating {
        id: navigating
        x: Constants.width * 2
        y: 0
    }

    MovementForm {
        id: movementControl
    }

    states: [
        State {
            name: "initial"
        },
        State {
            name: "selection"

            PropertyChanges {
                target: movementControl
                selected: true
            }
        },
        State {
            name: "settings"

            PropertyChanges {
                target: movementControl
                x: -Constants.leftSideBarWidth
                selected: false
                inSettings: true
            }

            PropertyChanges {
                target: chooseProduct
                x: Constants.width
                y: 0
            }

            PropertyChanges {
                target: navigating
                x: Constants.width * 2
                y: 0
            }
        },
        State {
            name: "choose product"

            PropertyChanges {
                target: chooseProduct
                x: 0
            }

            PropertyChanges {
                target: movementControl
                x: -Constants.width - Constants.leftSideBarWidth
                inSettings: true
                selected: false
            }

            PropertyChanges {
                target: navigating
                x: Constants.width
            }
        },
        State {
            name: "navigating"

            PropertyChanges {
                target: chooseProduct
                x: -Constants.width
            }

            PropertyChanges {
                target: navigating
                x: 0
            }

            PropertyChanges {
                target: movementControl
                x: -Constants.width * 2 - Constants.leftSideBarWidth
            }
        },
        State {
            name: "finished"

            PropertyChanges {
                target: chooseProduct
                x: -Constants.width
                y: 0
                visible: false
            }

            PropertyChanges {
                target: navigating
                x: 0
            }

            PropertyChanges {
                target: movementControl
                x: -Constants.leftSideBarWidth - Constants.width
                inSettings: true
            }
        },
        State {
            name: "start"

            PropertyChanges {
                target: chooseProduct
                x: 0
                visible: false
            }

            PropertyChanges {
                target: navigating
                x: Constants.width
                y: 0
            }

            PropertyChanges {
                target: movementControl
                x: 0
                inSettings: true
            }
        }
    ]
}
