import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

import "../"

Rectangle {
    id: root



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
    color: Constants.primaryColor

    Image {
        id: logoId
        source: "qrc:/images/logoBlue.png"
    }
    RowLayout {
        id: buttonGroupId
        anchors.left: logoId.right
        anchors.leftMargin: 60
        spacing: 50

        Button{
            id: accountId
            text: "Account"
            contentItem: Text {
                    text: accountId.text
                    font: accountId.font
                    opacity: enabled ? 1.0 : 0.3
                    color: accountId.down ? Constants.activeColor : Constants.inactiveColor
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitHeight: 50
                    implicitWidth: 72
                    color: Constants.primaryColor

                }
            font{
                family: Constants.mulishNormal.name
                pixelSize: 18
            }
            onClicked: {
                root.accountClicked();
            }

        }

        Button{
            id: organizationInfoId
            text: "Organization Info"
            contentItem: Text {
                    text: organizationInfoId.text
                    font: organizationInfoId.font
                    opacity: enabled ? 1.0 : 0.3
                    color: organizationInfoId.down ? Constants.activeColor : Constants.inactiveColor
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitHeight: 50

                    color: Constants.primaryColor

                }
            font{
                family: Constants.mulishNormal.name
                pixelSize: 18
            }

        }

        Button{
            id: ecPrivateKeyId
            text: "EC Private Key"
            contentItem: Text {
                    text: ecPrivateKeyId.text
                    font: ecPrivateKeyId.font
                    opacity: enabled ? 1.0 : 0.3
                    color: ecPrivateKeyId.down ? Constants.activeColor : Constants.inactiveColor
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitHeight: 50

                    color: Constants.primaryColor

                }
            font{
                family: Constants.mulishNormal.name
                pixelSize: 18
            }

        }
        Button{
            id: spcTokenId
            text: "SPC Token"
            contentItem: Text {
                    text: spcTokenId.text
                    font: spcTokenId.font
                    opacity: enabled ? 1.0 : 0.3
                    color: spcTokenId.down ? Constants.activeColor : Constants.inactiveColor
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitHeight: 50

                    color: Constants.primaryColor

                }
            font{
                family: Constants.mulishNormal.name
                pixelSize: 18
            }
            onClicked: root.sPCTokenClicked()

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


