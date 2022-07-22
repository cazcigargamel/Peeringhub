import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.15

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

    Rectangle {
        id: topBar
        anchors{
            left:parent.left
            top: parent.top
            right: parent.right
        }
        height: 50
        color: "#3DD598"

        Image {
            id: logoId
            source: "qrc:/images/Logo.png"
        }
        Image {
            id: closeIconId
            source: "qrc:/images/close.png"
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 22
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    root.close();
                }
            }
        }
        Image {
            id: minimizeIconId
            source: "qrc:/images/minimize.png"
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 70
            }
        }
    }

    Rectangle {
        width: 485
        height: 714
        anchors {
            left: parent.left
            leftMargin: 557
            top:parent.top
            topMargin: 110
        }

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
                Image {
                    id: accountInfoId
                    source: "qrc:/images/accountInfo.png"
                }

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

            RowLayout {
                spacing: 10
                Image {
                    id: emailId
                    source: "qrc:/images/email.png"
                }

                Text {
                    text: qsTr("Email")
                    font.pointSize: 15
                    color: "#2F3C4E"
                }
            }

            RowLayout {
                Rectangle {
                    color: "transparent"
                    border.color: "#E6E6E6"
                    border.width: 1
                    width: 385
                    height: 51
                    radius: 8

                    Text {
                        text: qsTr("Enter your Email address")
                        font.pointSize: 15
                        color: "#2F3C4E"
                        anchors {
                            verticalCenter: parent.verticalCenter
                            left: parent.left
                            leftMargin: 20
                        }
                    }
                }
            }

            RowLayout {
                spacing: 10
                Image {
                    id: uploadPrivateKeyId
                    source: "qrc:/images/uploadPrivateKey.png"
                }

                Text {
                    text: qsTr("Upload Private Key")
                    font.pointSize: 15
                    color: "#2F3C4E"
                }
            }

            Image {
                id: cardInfoId
                source: "qrc:/images/cardInfo.png"
            }

            Rectangle{
                width: 184
                height: 50
                radius: 8
                color: "#3DD598"

                Text{
                    anchors.centerIn: parent
                    text: "Submit"
                    font.pointSize: 16
                    color: "#FFFFFF"
                }
            }
        }
    }
}
