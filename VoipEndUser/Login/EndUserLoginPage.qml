import QtQuick 2.0
import QtQuick.Layouts 1.12
import "../"
import "../../"
Item {

    Rectangle {
        anchors.fill: parent
        color: Constants.appBackground
        radius: 8
        EndUserLoginForm {
            anchors {
                top: parent.top
                topMargin: 50
                horizontalCenter: parent.horizontalCenter
            }
        }
    }
}

