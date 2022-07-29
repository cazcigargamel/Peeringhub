import QtQuick 2.11
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

    Rectangle {
        id:horizontalLineUpper
        width: 1170 ; height: 1
        color: Constants.outlineColor
        border{
            width: 1
            color: Constants.outlineColor
        }
        anchors.top: parent.top
        anchors.topMargin: 144
    }

//    Flickable {
//        width: parent.width ; height: 560
//        anchors.top: horizontalLineUpper.bottom
//        anchors.topMargin: 30
//        contentHeight: listViewId.implicitHeight

        ListView {
            id: listViewId
            anchors.top: horizontalLineUpper.bottom
            anchors.topMargin: 30
            model: listmodelId
            delegate: delegateId
        }
        ListModel {
            id: listmodelId
            ListElement {
                orderId: "A0B1C007" ;
                expiredOn: "2023-05-13" ;
                status: "Valid" ;
                certCreatedOn: "2023-05-11" ;
                certExpiredON: "2023-06-07" ;
                certUrl: "http://www.faxquote.com" ;
                action: "Revoke"
            }
            ListElement {
                orderId: "A0B1C073" ;
                expiredOn: "2023-05-13" ;
                status: "Valid" ;
                certCreatedOn: "2023-05-11" ;
                certExpiredON: "2023-06-07" ;
                certUrl: "http://www.faxquote.com" ;
                action: "Revoke"
            }
            ListElement {
                orderId: "A0B1C060" ;
                expiredOn: "2023-05-13" ;
                status: "Valid" ;
                certCreatedOn: "2023-05-11" ;
                certExpiredON: "2023-06-07" ;
                certUrl: "http://www.faxquote.com" ;
                action: "Revoke"
            }
        }

        Component {
            id: delegateId
            Rectangle {
                id: rectId
                width: parent.width
                height: 27
                //color: "red"

                Text{
                    id: orderLabelId
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 48
                    text: orderId
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
                Text{
                    id: expiderOnLabelId
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 177
                    text: expiredOn
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
            }
        }
    //}
}
