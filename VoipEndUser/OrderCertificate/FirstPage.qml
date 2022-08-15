import QtQuick 2.0
import QtQuick.Controls 2.15
import "../../"
import "../../UIComponents/" as UI

Item {
    anchors.fill: parent

    Rectangle{
        anchors{
            top: parent.top
            topMargin: 50
            left: parent.left
            leftMargin: 154
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1170 ; height: 133

        Text {
            text: qsTr("Generate Certificate - Select Numbers")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 50
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Step 1")
            anchors{
                left:parent.left
                leftMargin: 1040
                top: parent.top
                topMargin: 50
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }

            color: Constants.primaryColor
        }
    }
    Rectangle{
        anchors{
            top: parent.top
            topMargin: 50
            left: parent.left
            leftMargin: 154
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1170 ; height: 628

        UI.PrimaryButtonWithIcon{
            name: "Select"
            icon: "qrc:/images/ok.png"
            anchors{
                top: parent.top
                topMargin: 50
                left: parent.left
                leftMargin: 50
            }
        }

        UI.SecondaryButtonWithIcon{
            name: "Import"
            icon: "qrc:/images/import.png"
            anchors{
                top: parent.top
                topMargin: 50
                left: parent.left
                leftMargin: 264
            }
        }

        UI.SecondaryButtonWithIcon{
            name: "Copy and Paste"
            icon: "qrc:/images/copy.png"
            anchors{
                top: parent.top
                topMargin: 50
                left: parent.left
                leftMargin: 478
            }
        }

        UI.SecondaryButtonWithIcon{
            name: "Specify Range"
            icon: "qrc:/images/specifyRange.png"
            anchors{
                top: parent.top
                topMargin: 50
                left: parent.left
                leftMargin: 692
            }
        }

        Button {
            id: loginButton
            text: "Generate"
            anchors{
                left:parent.left
                leftMargin: 936
                top: parent.top
                topMargin: 50
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            contentItem: Text {
                    text: loginButton.text
                    font: loginButton.font
                    opacity: enabled ? 1.0 : 0.3
                    color: loginButton.down ? Constants.primaryColor : "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            background: Rectangle {
                implicitWidth: 184
                implicitHeight: 50
                radius: 8
                color: loginButton.down? "#FFFFFF" : Constants.primaryColor
                border{
                    color: Constants.primaryColor
                    width: 2
                }
            }

            onClicked: { //stackview.push("qrc:/Account/AccountPage.qml");
                settings.firstTime = false;
                console.log("first time false cekildi")
                loginClicked();
            }
        }

        Text {
            text: qsTr("Number Filter")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 123
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }
        Rectangle{
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 155
            }
            color: "transparent"
            border{
                width: 2
                color: Constants.outlineColor
            }
            TextInput{
                anchors.fill: parent
            }
        }

        Rectangle{
            width: 459 ; height: 350
            radius: 5
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 225
            }
            border{
                width: 2
                color: Constants.outlineColor
            }
        }

        Rectangle{
            width: 581 ; height: 350
            radius: 5
            anchors{
                left:parent.left
                leftMargin: 539
                top: parent.top
                topMargin: 225
            }
            border{
                width: 2
                color: Constants.outlineColor
            }
        }
    }
}
