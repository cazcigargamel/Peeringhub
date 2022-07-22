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
        font.pointSize: 15
        color: "#2F3C4E"
    }
}
