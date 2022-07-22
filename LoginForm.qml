import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Popup {
    id: root
    width: 485
    height: 714

    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent


    ColumnLayout {
        spacing: 20
        anchors{
            left:parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 50
        }

        Text {
            id: header
            text: qsTr("Welcome to ACME Client!")
            font.pointSize: 26
            color: "#2F3C4E"

        }

        RowLayout {
            spacing: 10
//            Image {
//                id: accountInfoId
//                source: "qrc:/images/accountInfo.png"
//            }

            Text {
                text: qsTr("What is your role?")
                font.pointSize: 15
                color: "#2F3C4E"
            }
        }

        RowLayout {
            spacing: 10
            RadioButton {
                text: "Service Provider"
            }
            RadioButton {
                text: "VoIP End User"
            }
        }

        Text {
            text: qsTr("ACME server URL")
            font.pointSize: 15
            color: "#2F3C4E"
        }
        Rectangle {
            color: "transparent"
            width: 385
            height: 51
            border.width: 1
            border.color: "#E6E6E6"
            radius: 8

            TextInput {
                text: "http://peeringhub.io"
                color: "#2F3C4E"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 20
            }
        }

        Text {
            text: qsTr("OCN")
            font.pointSize: 15
            color: "#2F3C4E"
        }
        Rectangle {
            color: "transparent"
            width: 385
            height: 51
            border.width: 1
            border.color: "#E6E6E6"
            radius: 8

            TextInput {
                text: "314H"
                color: "#2F3C4E"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 20
            }
        }
        RowLayout {
            spacing: 59
            Text {
                text: qsTr("Country")
                font.pointSize: 15
                color: "#2F3C4E"
            }
            Text {
                text: qsTr("Optional")
                font.pointSize: 15
                color: "#C4C4C4"
            }
            Text {
                text: qsTr("Locality")
                font.pointSize: 15
                color: "#2F3C4E"
            }
            Text {
                text: qsTr("Optional")
                font.pointSize: 15
                color: "#C4C4C4"
            }
        }

        RowLayout {
            spacing: 29
            Rectangle {
                color: "transparent"
                width: 178
                height: 51
                border.width: 1
                border.color: "#E6E6E6"
                radius: 8

                TextInput {
                    text: "US"
                    color: "#2F3C4E"
                    font.pointSize: 15
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
            }

            Rectangle {
                color: "transparent"
                width: 178
                height: 51
                border.width: 1
                border.color: "#E6E6E6"
                radius: 8

                TextInput {
                    text: "e.g City"
                    color: "#C4C4C4"
                    font.pointSize: 15
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                }
            }
        }

        RowLayout {
            spacing: 59
            Text {
                text: qsTr("Organization")
                font.pointSize: 15
                color: "#2F3C4E"
            }
            Text {
                text: qsTr("Optional")
                font.pointSize: 15
                color: "#C4C4C4"
            }
            Text {
                text: qsTr("Unit")
                font.pointSize: 15
                color: "#2F3C4E"
            }
            Text {
                text: qsTr("Optional")
                font.pointSize: 15
                color: "#C4C4C4"
            }
        }

        RowLayout {
            spacing: 29
            Rectangle {
                color: "transparent"
                width: 178
                height: 51
                border.width: 1
                border.color: "#E6E6E6"
                radius: 8

                TextInput {
                    text: "Organization Name"
                    color: "#C4C4C4"
                    font.pointSize: 15
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                color: "transparent"
                width: 178
                height: 51
                border.width: 1
                border.color: "#E6E6E6"
                radius: 8

                TextInput {
                    text: "Organization Unit"
                    font.pointSize: 15
                    color: "#C4C4C4"
                    anchors.centerIn: parent
                }
            }
        }
        Rectangle{
            width: 184
            height: 50
            radius: 8
            color: "#3DD598"

            Text{
                anchors.centerIn: parent
                text: "Log In"
                font.pointSize: 16
                color: "#FFFFFF"
            }
        }
    }
}
