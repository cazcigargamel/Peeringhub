import QtQuick 2.11
import QtQuick.Layouts 1.12
import "../../"

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
        width: 1292 ; height: 133

        Text {
            text: qsTr("Certificate Listing")
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
    }

    Rectangle{
        anchors{
            top: parent.top
            topMargin: 263
            left: parent.left
            leftMargin: 154
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1292 ; height: 567

        Text {
            text: qsTr("Created On")
            anchors{
                left:parent.left
                leftMargin: 51
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Expired On")
            anchors{
                left:parent.left
                leftMargin: 190
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Update Interval")
            anchors{
                left:parent.left
                leftMargin: 326
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Last Updated On")
            anchors{
                left:parent.left
                leftMargin: 478
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Sub ID")
            anchors{
                left:parent.left
                leftMargin: 642
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Cer URL")
            anchors{
                left:parent.left
                leftMargin: 742
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("# of TN")
            anchors{
                left:parent.left
                leftMargin: 953
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Status")
            anchors{
                left:parent.left
                leftMargin: 1071
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Action")
            anchors{
                left:parent.left
                leftMargin: 1180
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Rectangle{
            id: upperLine
            width: parent.width ; height: 2
            color: Constants.outlineColor
            anchors.top: parent.top
            anchors.topMargin: 90
        }
        Rectangle{
            id: bottomLine
            width: parent.width ; height: 2
            color: Constants.outlineColor
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 68
        }
    }
}
