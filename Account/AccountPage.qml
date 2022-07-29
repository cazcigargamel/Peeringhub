import QtQuick 2.0
import QtQuick.Layouts 1.12
import "../"

Item {

    Rectangle {
        anchors.fill: parent
        color: Constants.appBackground

        AccountCard {
            id: accountCardId
            anchors {
                top: parent.top
                topMargin: 50
                horizontalCenter: parent.horizontalCenter
            }
        }

        ActiveOrdersCard {
            anchors {
            top: accountCardId.bottom
            topMargin: 50
            horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
