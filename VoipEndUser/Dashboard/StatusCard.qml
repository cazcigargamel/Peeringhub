import QtQuick 2.0
import "../../"

Item {
    id: root
    property string icon: ""
    property string name: ""
    width: background.width ; height: background.height

    Rectangle{
        id: background
        width: 512 ; height: 185
        radius: 8
        color: "transparent"
        border{
            width: 1
            color: Constants.outlineColor
        }
        Image {

            source: root.icon
            anchors{
                left: parent.left
                leftMargin: 36
                top: parent.top
                topMargin: 34
            }
        }
        Text{
            text: "Status"
            font{
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
            anchors{
                left: parent.left
                leftMargin: 70
                top: parent.top
                topMargin: 22
            }

            color: Constants.text1Color
        }
        Image {

            source: root.icon
            anchors{
                left: parent.left
                leftMargin: 36
                top: parent.top
                topMargin: 34
            }
        }
    }
}
