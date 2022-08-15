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
}
