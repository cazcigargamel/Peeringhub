import QtQuick 2.0

Rectangle {
    id: accountCard
    width: 1170 ; height: 133
    radius: 10

    border {
        width: 1
        color: "#EEF1FF"
    }
    color: "#FFFFFF"

    Text {
        id: accountInfo
        text: qsTr("Account Info")
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 50
        }
        font.pointSize: 26
        color: "#2F3C4E"
    }

    Text {
        id: statusLabel
        text: qsTr("Status:")
        font.pointSize: 18
        color: "#2F3C4E"
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 764
        }
    }
    Image {
        id: activeIcon
        source: "qrc:/images/active.png"
        anchors {
            verticalCenter: parent.verticalCenter
            left: statusLabel.right
            leftMargin: 10
        }
    }
}
