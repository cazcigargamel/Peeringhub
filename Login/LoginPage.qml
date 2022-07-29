import QtQuick 2.0
import QtQuick.Layouts 1.12
import "../"

Item {

    Rectangle {
        anchors.fill: parent
        color: Constants.appBackground
        radius: 8
        LoginForm {
            anchors {
                top: parent.top
                topMargin: 50
                horizontalCenter: parent.horizontalCenter
            }
        }
    }
}




