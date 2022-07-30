import QtQuick 2.0
import QtQuick.Controls 2.15

import "../"

Rectangle {
    width: 1170 ; height: 133
    radius: 10
    color: Constants.cardBackgroundColor

    Text {
        text: "Order Certification"
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h2
        }
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 50
        }
    }

    Text {
        text: "Step 1"
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h2
        }
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 50
        }
        color: Constants.primaryColor
    }
}
