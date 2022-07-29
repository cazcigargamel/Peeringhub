import QtQuick 2.0
import QtQuick.Controls 2.15
import "../"

Popup {

    width: 440 ; height: 492

    dim: true
    background: Rectangle {
        anchors.fill: parent
        radius: 10
        color: Constants.cardBackgroundColor
    }
    Image {
        id: closeButtonId
        source: "qrc:/images/popupClose.png"
        anchors {
            top: parent.top
            topMargin: 33
            right: parent.right
            rightMargin: 33
        }

        MouseArea {
            anchors.fill: parent
            onClicked: close()
        }
    }

    Image {
        id: personCloseId
        source: "qrc:/images/PersonCheckFill.png"
        anchors {
            top: parent.top
            topMargin: 107
            horizontalCenter: parent.horizontalCenter
        }
    }

    Text {
        id: label
        text: qsTr("Activated")
        anchors {
            top: parent.top
            topMargin: 183
            horizontalCenter: parent.horizontalCenter
        }
        font{
            family: Constants.mulishNormal.name
            pixelSize: Constants.h2

        }
        color: Constants.text1Color
    }

    Text {
        id: longlabel
        height: 54
        width: 240

        wrapMode: Text.Wrap
        text: qsTr("Your account has been succesfully activated")
        anchors {
            top: parent.top
            topMargin: 255
            horizontalCenter: parent.horizontalCenter
        }
        font{
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5

        }
        color: "#27AE60"
    }

    Button {
        id:closeButton
        text: "Close"
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h4
        }
        background: Rectangle{
            anchors.centerIn: parent
            width: 184 ; height: 50
            radius: 8
            color: Constants.primaryColor
        }
        contentItem: Text {
            text: closeButton.text
            font: closeButton.font
            anchors.centerIn: parent
            color: "#FFFFFF"
        }

        anchors {
            top: parent.top
            topMargin: 342
            horizontalCenter: parent.horizontalCenter
        }
        onClicked: close()
    }

}
