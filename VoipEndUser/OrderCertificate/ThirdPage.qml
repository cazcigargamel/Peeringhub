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
            leftMargin: 215
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1170 ; height: 133

        Text {
            text: qsTr("Certificate Subscription created")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 47
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }

            color: Constants.text1Color
        }
    }//end of top card

    Rectangle{
        anchors{
            top: parent.top
            topMargin: 295
            left: parent.left
            leftMargin: 215
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1170 ; height: 628

        Text {
            text: qsTr("Subject")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 30
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }

        Text {
            text: qsTr("Telephone Numbers (#)")
            anchors{
                left:parent.left
                leftMargin: 920
                top: parent.top
                topMargin: 30
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("C = US, S = <>, O = <VoIP org name>, OU = <>, L = <>, CN = <VoIP org name> <CA> XXX")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 72
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text2Color
        }
        Text {
            text: qsTr("Expires:")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 129
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("YYYY-MM-DD HH:MM:SS")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 171
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text2Color
        }
        Text {
            text: qsTr("Update Interval:")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 228
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("days/hours")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 270
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text2Color
        }
        Text {
            text: qsTr("Certificate Type")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 327
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Regular / CA")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 369
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text2Color
        }
        Text {
            text: qsTr("URL: ")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 509
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("permanent public URL of the certificate")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 551
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text2Color
        }
        Rectangle{
            anchors{
                left:parent.left
                leftMargin: 425
                top: parent.top
                topMargin: 528
            }
            color: Constants.primaryColor
            width: 246 ; height: 50
            radius: 8
            Text{
                text: qsTr("Download Certificate")
                anchors{
                    left:parent.left
                    leftMargin: 25
                    verticalCenter: parent.verticalCenter
                }
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h4
                }

                color: "#FFFFFF"
            }
            Image{
                source: "qrc:/images/importNoFill.png"
                anchors{
                    right: parent.right
                    rightMargin: 26
                    verticalCenter: parent.verticalCenter
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {}
            }
        }
        Rectangle{
            anchors{
                left:parent.left
                leftMargin: 882
                top: parent.top
                topMargin: 528
            }
            border.color: Constants.primaryColor
            border.width: 2
            width: 246 ; height: 50
            radius: 8
            Text{
                text: qsTr("Download Numbers")
                anchors{
                    left:parent.left
                    leftMargin: 25
                    verticalCenter: parent.verticalCenter
                }
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h4
                }

                color: Constants.primaryColor
            }
            Image{
                source: "qrc:/images/importFill.png"
                anchors{
                    right: parent.right
                    rightMargin: 26
                    verticalCenter: parent.verticalCenter
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {}
            }
        }
    }
}
