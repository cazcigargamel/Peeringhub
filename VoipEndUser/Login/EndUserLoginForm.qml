import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../.."

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
            anchors{
                left: parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 50
            }
            font{
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }

        }

    }


}
