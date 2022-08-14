import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "../"
import "../UIComponents" as UI

Item {
    id: root
    width: 485
    height: 526

    signal loginClicked()
    signal voipenduserClicked()

    property string acmeUrl: acmeUrlTextInputId.text

    Rectangle {
        anchors.fill: parent
        color: Constants.cardBackgroundColor
    }

    Text {
        id: header
        width: 317
        height: 50
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 50
        }
        text: qsTr("Welcome to ACME Client!")
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h2
        }

        color: Constants.text1Color

    }

    Text {
        text: qsTr("What is your role?")
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 115
        }
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }

        color: Constants.text1Color
    }


    RowLayout {
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 163
        }
        spacing: 10

        UI.RadioButton {
            text: "Service Provider"
        }
        UI.RadioButton {
            text: "VoIP End User"
            onClicked: {
                console.log("show end user login page")
                voipenduserClicked();
            }
        }
    }

    Text {
        text: qsTr("ACME server URL")
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 204
        }
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }

        color: Constants.text1Color
    }
        Rectangle {
            color: "transparent"
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 241
            }
            width: 385
            height: 51
            border.width: 1
            border.color: Constants.outlineColor
            radius: 8

            TextInput {
                id: acmeUrlTextInputId
                text: "dfsd"
                color: Constants.text1Color
                anchors.fill: parent
                anchors.margins: 20
            }
        }

        Text {
            text: qsTr("OCN")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 308
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }
        Rectangle {
            color: "transparent"
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 345
            }
            width: 385
            height: 51
            border.width: 1
            border.color: Constants.outlineColor
            radius: 8

            TextInput {
                text: "314H"
                color: Constants.text1Color
                anchors.fill: parent
                anchors.margins: 20
            }
        }


        Button {
            id: loginButton
            text: "Log In"
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 426
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            contentItem: Text {
                    text: loginButton.text
                    font: loginButton.font
                    opacity: enabled ? 1.0 : 0.3
                    color: loginButton.down ? "red" : "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            background: Rectangle {
                implicitWidth: 184
                implicitHeight: 50
                radius: 8
                color: Constants.primaryColor
            }

            onClicked: { //stackview.push("qrc:/Account/AccountPage.qml");
                settings.firstTime = false;
                console.log("first time false cekildi")
                loginClicked();
            }
        }

    }

