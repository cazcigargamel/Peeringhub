import QtQuick 2.0
import "../"

Rectangle {
    id: control

    width: 1170 ; height: 704
    color: "#FFFFFF"

    Text{
        text: "Active Orders"
        color: Constants.text1Color

        anchors {
            left: parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 30
        }

        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h3
        }
    }

    Text {
        id: orderId
        text: "Order ID"
        color: Constants.text1Color
        anchors {
            left: parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 87
        }

        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }
    }

    Text {
        id: expiderId
        text: "Expider On"
        color: Constants.text1Color
        anchors {
            left: orderId.right
            leftMargin: 66
            top: parent.top
            topMargin: 87
        }

        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }
    }

    Text {
        id: statusId
        text: "Status"
        color: Constants.text1Color
        anchors {
            left: expiderId.right
            leftMargin: 58
            top: parent.top
            topMargin: 87
        }

        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }
    }
    Text {
        id: certId
        text: "Cert. Created On"
        color: Constants.text1Color
        anchors {
            left: statusId.right
            leftMargin: 50
            top: parent.top
            topMargin: 87
        }

        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }
    }
    Text {
        id: certExpiredOnId
        text: "Cert. Expired On"
        color: Constants.text1Color
        anchors {
            left: certId.right
            leftMargin: 50
            top: parent.top
            topMargin: 87
        }

        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }
    }
    Text {
        id: certUrlId
        text: "Cert. Expired On"
        color: Constants.text1Color
        anchors {
            left: certExpiredOnId.right
            leftMargin: 50
            top: parent.top
            topMargin: 87
        }

        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }
    }
    Text {
        id: activeId
        text: "Active"
        color: Constants.text1Color
        anchors {
            left: certUrlId.right
            leftMargin: 226
            top: parent.top
            topMargin: 87
        }

        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }
    }

}
