import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.15

import "Account"

Window {
    id: root
    width: 1600
    height: 900
    visible: true
    title: qsTr("Hello World")
    color: "#F5F5F5"
    flags: Qt.FramelessWindowHint |
           Qt.WindowMinimizeButtonHint |
           Qt.Window


    Popup {
        id: popup
        x: 100
        y:100
        width: 200
        height: 300
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Button{
            text: "close"
            onClicked: popup.close();
        }
    }

    TopBar {
        id: topbar

        onMinimizeClicked: root.showMinimized();
        onCloseClicked: root.close();
        onAccountClicked: {
            console.log("account clicked");
        }
    }
    AccountCard {
        id: accountCard
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 100
        }
    }

    LoginForm {
        id: loginForm
        x: 557
        y:110
    }


    Button{
        text: "Open"
        onClicked: loginForm.open()
    }
}
