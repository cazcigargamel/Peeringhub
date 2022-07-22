import QtQuick 2.0

Rectangle {
    id: root

    property color primaryColor: "#3DD598"

    signal minimizeClicked()
    signal closeClicked()
    signal accountClicked()
    signal organizationInfoClicked()
    signal eCPrivateKeyClicked()
    signal sPCTokenClicked()

    anchors{
        left:parent.left
        top: parent.top
        right: parent.right
    }

    height: 50
    color: root.primaryColor

    Image {
        id: logoId
        source: "qrc:/images/Logo.png"
    }

    Rectangle {
        id: accountContainer
        width: 184
        height: 50
        color: "transparent"
        anchors {
            left: logoId.right
            verticalCenter: parent.verticalCenter
        }
        Text {
            id: account
            anchors.centerIn: parent
            text: qsTr("Account")
            font.pointSize: 15
            color: "#FFFFFF"

        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.accountClicked();
                console.log("inside");
            }
        }
    }

    Rectangle {
        id: organizationContainer
        width: 203
        height: 50
        color: "transparent"
        anchors {
            left: accountContainer.right
            verticalCenter: parent.verticalCenter
        }
        Text {
            id: organizationLabel
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Organization Info")
            font.pointSize: 15
            color: "#FFFFFF"
        }


        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.organizationInfoClicked();
                console.log("inside");
            }
        }
    }

    Rectangle {
        id: ecPrivateKeyContainer
        width: 175
        height: 50
        color: "transparent"
        anchors {
            left: organizationContainer.right
            verticalCenter: parent.verticalCenter
        }
        Text {
            id: ecPrivateKeyLabel
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("EC Private Key")
            font.pointSize: 15
            color: "#FFFFFF"

        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.organizationInfoClicked();
                console.log("inside");
            }
        }
    }

    Rectangle {
        id: spcTokenContainer
        width: 175
        height: 50
        color: "transparent"
        anchors {
            left: ecPrivateKeyContainer.right
            verticalCenter: parent.verticalCenter
        }
        Text {
            id: spcTokenyLabel
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("SPC Token")
            font.pointSize: 15
            color: "#FFFFFF"

        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.organizationInfoClicked();
                console.log("inside");
            }
        }
    }
    Image {
        id: closeIconId
        source: "qrc:/images/close.png"
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 22
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.closeClicked();
            }
        }
    }
    Image {
        id: minimizeIconId
        source: "qrc:/images/minimize.png"
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 70
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.minimizeClicked();
            }
        }
    }
}


