import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import "../.."
import "../../UIComponents" as UI

Rectangle {
    width: 485 ; height: 651
    radius: 10
    color: Constants.cardBackgroundColor

    ColumnLayout{
        spacing: 30
        anchors{
            left: parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 50
        }

        Text {
            id: titleId
            text: qsTr("Welcome to ACME Client!")

            font{
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }

        }
        ColumnLayout{
            RowLayout{
                spacing: 10
                Image{
                    source: "qrc:/images/accountInfoIcons.png"
                }
                Text{
                    text: "Login As"
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text1Color
                }
            }

            RowLayout{
                spacing: 20

                UI.RadioButton{
                    name: "Service Provider"
                }

                UI.RadioButton{
                    name: "VoIP User"
                }
            }
        }
        ColumnLayout{
            RowLayout{
                spacing: 10
                Image{
                    source: "qrc:/images/accountUrl.png"
                }
                Text{
                    text: "SP Server URL"
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text1Color
                }
            }

            TextInput{
                text: "http://ca.spname.peeringhub.io"
            }
        }

        ColumnLayout{
            spacing: 23

            RowLayout{
                spacing: 10

                Image{
                    source: "qrc:/images/accountKey.png"
                }

                Text{
                    text: "Upload Public Key"
                }
            }
            Image{
                source: "qrc:/images/cardUpload.png"
            }
            Text{
                text: "You can download your public key from http://portal.peeringhub.io"
            }

        }

        Button {
            id: loginButton
            text: "Log In"

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

            onClicked: stackview.push("qrc:/Account/AccountPage.qml")
        }


    }


}
