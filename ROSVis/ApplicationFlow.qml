import QtQuick 2.4
import QtQuick.Controls 2.0
import QtGamepad 1.0

ApplicationFlowForm {
    id: applicationFlow
    state: "initial"

    property int animationDuration: 400

//! [0]
    movementControl.buyButtonSelection.onClicked: {
        applicationFlow.state = "settings"
    }
//! [0]


    movementControl.sideBar.onUserSelected: {
        applicationFlow.state = "selection"
    }

    movementControl.backButton.onClicked: {
        applicationFlow.state = "selection"
    }

//! [2]
    movementControl.buyButton.onClicked: {
        applicationFlow.state = "choose product"
    }
//! [2]

//! [1]
    chooseProduct.continueButton.onClicked: {
        applicationFlow.state = "navigating"
        navigating.coffeeName = movementControl.sideBar.currentUser
        navigating.start()
    }
//! [1]

    navigating.onFinished: {
        finalAnimation.start()
    }

    SequentialAnimation {
        id: finalAnimation

        PropertyAction {
            target: applicationFlow
            property: "state"
            value: "finished"
        }

        PauseAnimation {
            duration: 1000
        }

        PropertyAction {
            target: applicationFlow
            property: "state"
            value: "start"
        }

        PauseAnimation {
            duration: applicationFlow.animationDuration
        }

        PauseAnimation {
            duration: 400
        }

        PropertyAction {
            target: applicationFlow
            property: "state"
            value: "initial"
        }
    }


    Behavior on movementControl.x {
        PropertyAnimation {
            duration: applicationFlow.animationDuration
            easing.type: Easing.InOutQuad
        }
    }


    Behavior on chooseProduct.x {
        PropertyAnimation {
            duration: applicationFlow.animationDuration
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on navigating.x {
        PropertyAnimation {
            duration: applicationFlow.animationDuration
            easing.type: Easing.InOutQuad
        }
    }

    //ROBOT NAVIGATION CONTROLS
    movementControl.buttonY.onPressed: {
        movementControl.keypressed.text = "Going Up";
    }

    movementControl.buttonY.onReleased: {
        movementControl.keypressed.text = "Robot has done moving";
    }

    movementControl.buttonA.onPressed: {
        choosingCoffee.keypressed.text = "Going Down";
    }

    movementControl.buttonA.onReleased: {
        movementControl.keypressed.text = "Robot has done moving";
    }

    movementControl.buttonB.onPressed: {
        movementControl.keypressed.text = "Going Right";
    }

    movementControl.buttonB.onReleased: {
        movementControl.keypressed.text = "Robot has done moving";
    }

    movementControl.buttonX.onPressed: {
        movementControl.keypressed.text = "Going Left";
    }

    movementControl.buttonX.onReleased: {
        movementControl.keypressed.text = "Robot has done moving";
    }

    movementControl.r1Button.onPressed: {
        movementControl.keypressed.text = "Rotating Left";
    }

    movementControl.r1Button.onReleased: {
        movementControl.keypressed.text = "Robot has done moving";
    }

    movementControl.r2Button.onPressed: {
        movementControl.keypressed.text = "Rotating Right";
    }

    movementControl.r2Button.onReleased: {
        movementControl.keypressed.text = "Robot has done moving";
    }

    Keys.onPressed: {
        if (event.key === Qt.Key_Up) {
            movementControl.keypressed.text = "Going Up";
        } else if (event.key === Qt.Key_Down) {
            movementControl.keypressed.text = "Going Down";
        } else if (event.key === Qt.Key_Right) {
            movementControl.keypressed.text = "Going Right";
        } else if (event.key === Qt.Key_Left) {
            movementControl.keypressed.text = "Going Left";
        } else if (event.key === Qt.Key_Return) {
            movementControl.keypressed.text = "Key Return Pressed";
        } else if (event.key === Qt.Key_Back) {
            movementControl.keypressed.text = "Key Back Pressed";
        } else if (event.key === Qt.Key_Forward) {
            movementControl.keypressed.text = "Key Forward Pressed";
        } else if (event.key === Qt.Key_Q) {
            movementControl.keypressed.text = "Rotating Left";
        } else if (event.key === Qt.Key_E) {
            movementControl.keypressed.text = "Rotating Right"
        }
    }

    Keys.onReleased: {
        /*if (event.key === Qt.Key_Up) {
            movementControl.keypressed.text = "Robot has done moving";
        } else if (event.key === Qt.Key_Down) {
            movementControl.keypressed.text = "Robot has done moving";
        } else if (event.key === Qt.Key_Right) {
            movementControl.keypressed.text = "Robot has done moving";
        } else if (event.key === Qt.Key_Left) {
            movementControl.keypressed.text = "Robot has done moving";
        } else if (event.key === Qt.Key_Return) {
            movementControl.keypressed.text = "Robot has done moving";
        } else if (event.key === Qt.Key_Back) {
            movementControl.keypressed.text = "Robot has done moving";
        } else if (event.key === Qt.Key_Forward) {

        } else if (event.key === Qt.Key_Q) {

        } else if (event.key === Qt.Key_E) {
            movementControl.keypressed.text = "Rotating Right"
        }*/
        movementControl.keypressed.text = "Robot has done moving";
    }
    // END OF ROBOT NAVIGATION CONTROL

}
