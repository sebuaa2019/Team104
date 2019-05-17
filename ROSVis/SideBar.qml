import QtQuick 2.4

SideBarForm {
    id: sideBar
    property string currentUser: qsTr("Admin")
    signal userSelected

    normaluserButton.onClicked: {
        sideBar.currentUser = qsTr("Normal User")
        sideBar.userSelected()
    }

//! [0]
    adminButton.onClicked: {
        sideBar.currentUser = qsTr("Admin")
        sideBar.userSelected()
    }
//! [0]
}
