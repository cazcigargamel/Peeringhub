import QtQuick 2.0
import QtQuick.Layouts 1.12
import "../"

Item {

    signal clickedServiceProvider()
    signal clickedEndUser()

    Rectangle {
        anchors.fill: parent
        color: Constants.appBackground
        radius: 8
        LoginFormExtended {
            id: secondLogin
            visible: false
            anchors {
                top: parent.top
                topMargin: 50
                horizontalCenter: parent.horizontalCenter
            }
        }

        LoginForm {
            id: firstLogin
            anchors {
                top: parent.top
                topMargin: 50
                horizontalCenter: parent.horizontalCenter
            }
            onLoginClicked: {
                clickedServiceProvider();
                topbar.showServiceHeader = true;

            }
        }

    }
    Component.onCompleted: {
        console.log("Login page ")
        console.log(settings.firstTime)
        firstLogin.visible = settings.firstTime
        secondLogin.visible = settings.firstTime ? false : true
    }
}




