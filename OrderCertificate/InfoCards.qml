import QtQuick 2.0
import QtQuick.Controls 2.15
import "../"

Rectangle {
    width: 1170 ; height: 585
    radius: 10
    color: Constants.cardBackgroundColor

    Text {
        text: "Select the desired option"
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h2
        }
        anchors {
            top: parent.top
            topMargin: 30
            left: parent.left
            leftMargin: 30
        }
    }

    Rectangle {
        width: 520 ; height: 421
        radius: 10
        color: "transparent"
        anchors {
            left: parent.left
            leftMargin: 100
            top: parent.top
            topMargin: 99
        }

        border {
            color: Constants.outlineColor
            width: 1
        }

        Text{
            text: "Use existing key"
            width: 134
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignHCenter
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }
            anchors {
                top: parent.top
                topMargin: 72
                left: parent.left
                leftMargin: 185
            }
        }
        Image{
            source: "qrc:/images/KeyPlus.png"
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: 154
            }
        }

        Button {
            id:selectSpecifyButton
            text: "Select"
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
                text: selectSpecifyButton.text
                font: selectSpecifyButton.font
                anchors.centerIn: parent
                color: "#FFFFFF"
            }

            anchors {
                top: parent.top
                topMargin: 317
                horizontalCenter: parent.horizontalCenter
            }
            onClicked: {

            }
        }
    }

    Rectangle {
        width: 520 ; height: 421
        radius: 10
        color: "transparent"
        anchors {
            left: parent.left
            leftMargin: 600
            top: parent.top
            topMargin: 99
        }
        border {
            color: Constants.outlineColor
            width: 1
        }

        Text{
            text: "Use a new key"
            width: 215
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignHCenter
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }
            anchors {
                top: parent.top
                topMargin: 73
                horizontalCenter: parent.horizontalCenter
            }
        }
        Image{
            source: "qrc:/images/KeyPlus.png"
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: 154
            }
        }

        Button {
            id: selectNewButtonId
            text: "Select"
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
                text: selectNewButtonId.text
                font: selectNewButtonId.font
                anchors.centerIn: parent
                color: "#FFFFFF"
            }

            anchors {
                top: parent.top
                topMargin: 317
                horizontalCenter: parent.horizontalCenter
            }
            onClicked: {

            }
        }
    }
}
