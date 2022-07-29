import QtQuick 2.0
import "../UIComponents/" as UI

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
        font.pixelSize: 26
        color: "#2F3C4E"
    }

    Text {
        id: statusLabel
        text: qsTr("Status:")
        font.pixelSize: 18
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

    UI.SecondaryButtonWithIcon {
        id: deactiveButton
        icon: "qrc:/images/closeForButton.png"
        name: "Deactive"
        onClick: {
            deactivedpopupId.x = 580 -215
            deactivedpopupId.y = 267-100
            deactivedpopupId.open()
        }

        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 50
        }
    }

    DeactivedPopUp {
        id: deactivedpopupId
    }
}
