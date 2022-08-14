import QtQuick 2.0
import "../../"
Item {
    id: root
    property string icon: ""
    property string title: ""
    property string name: ""

    Rectangle{
        id: background
        width: 512 ; height: 116
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
            text: root.title
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
        Text{
            text: root.name
            font{
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }
            anchors{
                left: parent.left
                leftMargin: 30
                top: parent.top
                topMargin: 69
            }
            color: Constants.text1Color
        }
    }
}
