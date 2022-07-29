import QtQuick 2.0
import QtQuick.Controls 2.15
import "../"

Popup {

    width: 440 ; height: 492

    dim: true
    background: Rectangle {
        anchors.fill: parent
        radius: 10
        color: Constants.cardBackgroundColor
    }
    Image {
        id: closeButtonId
        source: "qrc:/images/popupClose.png"
        anchors {
            top: parent.top
            topMargin: 33
            right: parent.right
            rightMargin: 33
        }
    }

}
