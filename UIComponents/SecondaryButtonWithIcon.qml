import QtQuick 2.0
import "../"

Rectangle {
    id: control

    property string icon: iconId.source
    property string name: textId.text
    signal click()

    width: 184 ; height: 50
    radius: 8
    color: "transparent"
    border {
        color: Constants.primaryColor
        width: 1
    }

    Image {
        id: iconId
        source: control.icon
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 40
        }
        width: 20 ; height: 20

    }

    Text {
        id: textId
        text: control.name
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 62
        }
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h4
        }

        color: Constants.primaryColor
    }

    MouseArea{
        anchors.fill: parent
        onClicked: control.click()
    }

}
