import QtQuick 2.0
import "../../"

Rectangle {
    width: 421 ; height: 185
    radius: 10
    color: "#FFFFFF"

    Image {
        anchors{
            left: parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 35
        }
        source: "qrc:/images/activeNumbers.png"
    }

    Text{
        anchors{
            left: parent.left
            leftMargin: 95
            top: parent.top
            topMargin: 30
        }
        font{
            family: Constants.mulishNormal.name
            pixelSize: Constants.h2
        }
        color: Constants.text2Color
    }

    Text{
        anchors{
            left: parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 99
        }
        font{
            family: Constants.mulishNormal.name
            pixelSize: Constants.h1
        }
        color: Constants.text1Color
    }
}
