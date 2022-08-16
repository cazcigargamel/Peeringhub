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
            text: qsTr("Specify your subscription parameters")
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
            text: qsTr("Certificate subject:")
            anchors{
                left:parent.left
                leftMargin: 38
                top: parent.top
                topMargin: 50
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text2Color
        }

        Text {
            text: qsTr("Country")
            anchors{
                left:parent.left
                leftMargin: 38
                top: parent.top
                topMargin: 107
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }

        Text {
            text: qsTr("US")
            anchors{
                left:parent.left
                leftMargin: 38
                top: parent.top
                topMargin: 150
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text2Color
        }
        Text {
            text: qsTr("Organization")
            anchors{
                left:parent.left
                leftMargin: 38
                top: parent.top
                topMargin: 223
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }

        TextField{
            anchors{
                left:parent.left
                leftMargin: 38
                top: parent.top
                topMargin: 252
            }
            placeholderText: "Organization Name"
            background: Rectangle {
                width: 219 ; height: 57
                border{

                    color: Constants.outlineColor
                    width: 2
                }
            }


        }
        Text {
            text: qsTr("Common Name")
            anchors{
                left:parent.left
                leftMargin: 38
                top: parent.top
                topMargin: 339
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }

        TextField{
            anchors{
                left:parent.left
                leftMargin: 38
                top: parent.top
                topMargin: 368
            }
            placeholderText: "John Delegate cert"
            background: Rectangle {
                width: 219 ; height: 57
                border{

                    color: Constants.outlineColor
                    width: 2
                }
            }
        }
        Text{
            text: "Regular End-entity name must \ninclude text \"Delegate cert\""
            anchors{
                left:parent.left
                leftMargin: 38
                top: parent.top
                topMargin: 430
            }
            font{
                family: Constants.mulishNormal.name
                pixelSize: 12
            }
            color: Constants.inputHintColor
        }
        Text {
            text: qsTr("State")
            anchors{
                left:parent.left
                leftMargin: 289
                top: parent.top
                topMargin: 107
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Optional")
            anchors{
                left:parent.left
                leftMargin: 446
                top: parent.top
                topMargin: 107
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.inputHintColor
        }
        TextField{
            text: "Texas"
            anchors{
                left:parent.left
                leftMargin: 289
                top: parent.top
                topMargin: 136
            }
            background: Rectangle{
                width: 219 ; height: 57
                border{
                    width: 2
                    color: Constants.inputHintColor
                }
            }
        }
        Text {
            text: qsTr("Organization Unit")
            anchors{
                left:parent.left
                leftMargin: 289
                top: parent.top
                topMargin: 223
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Optional")
            anchors{
                left:parent.left
                leftMargin: 446
                top: parent.top
                topMargin: 223
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.inputHintColor
        }
        TextField{
            text: "Organization Unit"
            anchors{
                left:parent.left
                leftMargin: 289
                top: parent.top
                topMargin: 252
            }
            background: Rectangle{
                width: 219 ; height: 57
                border{
                    width: 2
                    color: Constants.inputHintColor
                }
            }
        }
        Text {
            text: qsTr("Locality")
            anchors{
                left:parent.left
                leftMargin: 289
                top: parent.top
                topMargin: 339
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Optional")
            anchors{
                left:parent.left
                leftMargin: 446
                top: parent.top
                topMargin: 339
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.inputHintColor
        }
        TextField{
            text: "e.g city"
            anchors{
                left:parent.left
                leftMargin: 289
                top: parent.top
                topMargin: 368
            }
            background: Rectangle{
                width: 219 ; height: 57
                border{
                    width: 2
                    color: Constants.inputHintColor
                }
            }
        }
    }
}


















