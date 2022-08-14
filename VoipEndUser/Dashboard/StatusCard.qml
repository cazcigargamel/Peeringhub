import QtQuick 2.0
import "../../"

Item {
    id: root
    property string icon: ""
    property bool status: true

    width: background.width ; height: background.height

    Rectangle{
        id: background
        width: 270 ; height: 185
        radius: 8
        color: Constants.cardBackgroundColor

        Image {

            source: "qrc:/images/status.png"
            anchors{
                left: parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 35
            }
        }
        Text{
            text: "Status"
            font{
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }
            color: Constants.text2Color

            anchors{
                left: parent.left
                leftMargin: 90
                top: parent.top
                topMargin: 30
            }

        }
        Image {

            source: root.status ? "qrc:/images/active.png" : ""
            anchors{
                left: parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 110
            }
        }
    }
}
