import QtQuick 2.0
import "../"

Rectangle {
    width: 1170 ; height: 585
    radius: 10
    color: Constants.cardBackgroundColor

    Text {
        text: "Select the desired option"
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h2
        }
        anchors {
            top: parent.top
            topMargin: 30
            left: parent.left
            leftMargin: 30
        }
    }

    Rectangle {
        width: 470 ; height: 413
        radius: 10
        color: "transparent"
        border {
            color: Constants.outlineColor
            width: 1
        }

        Text{

}
    }
}
