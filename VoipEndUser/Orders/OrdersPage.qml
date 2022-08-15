import QtQuick 2.11
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.15
import "../../"

Item {
    anchors.fill: parent

    Rectangle{
        anchors{
            top: parent.top
            topMargin: 100
            left: parent.left
            leftMargin: 461
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 679 ; height: 133

        Text {
            text: qsTr("Orders Listing")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 50
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }

            color: Constants.text1Color
        }
    }

    Rectangle{
        anchors{
            top: parent.top
            topMargin: 263
            left: parent.left
            leftMargin: 461
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 679 ; height: 567

        Text {
            text: qsTr("Order Time")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 30
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Order Status")
            anchors{
                left:parent.left
                leftMargin: 431
                top: parent.top
                topMargin: 30
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Rectangle{
            id: upperLine
            width: parent.width ; height: 2
            color: Constants.outlineColor
            anchors.top: parent.top
            anchors.topMargin: 84
        }
        ListView {
            id: listViewId
            anchors.top: upperLine.bottom
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            model: listmodelId
            delegate: delegateId
            ScrollBar.vertical: ScrollBar {
                    active: true
//                    contentItem: Rectangle {
//                            id:contentItem_rect2
//                            radius: 4
//                            color: "#0062FF"
//                            width: 2 // This will be overridden by the width of the scrollbar
//                            height: 130 // This will be overridden based on the size of the scrollbar
//                        }
                    }
        }

        ListModel{
            id: listmodelId
            ListElement{
                ordertime: "2022-06-05 09:30 AM"
                orderstatus: "active"
            }
            ListElement{
                ordertime: "2022-06-21 05:25 AM"
                orderstatus: "expired"
            }
            ListElement{
                ordertime: "2022-06-13 4:30 PM"
                orderstatus: "revoked"
            }
            ListElement{
                ordertime: "2022-05-16 11:30 AM"
                orderstatus: "cancelled"
            }
            ListElement{
                ordertime: "2022-05-13 08:01 AM"
                orderstatus: "active"
            }
            ListElement{
                ordertime: "2022-04-24 06:50 PM"
                orderstatus: "active"
            }
            ListElement{
                ordertime: "2022-04-10 09:30 AM"
                orderstatus: "active"
            }
            ListElement{
                ordertime: "2022-04-10 09:30 AM"
                orderstatus: "active"
            }
            ListElement{
                ordertime: "2022-06-21 05:24 AM"
                orderstatus: "expired"
            }
            ListElement{
                ordertime: "2022-06-13 4:32 PM"
                orderstatus: "revoked"
            }
            ListElement{
                ordertime: "2022-05-16 11:35 AM"
                orderstatus: "cancelled"
            }
        }

        Component {
            id: delegateId
            Rectangle {
                id: rectId
                width: parent.width
                anchors.left: parent.left
                height: 57
                Text{
                    id: numberLabelId
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 50
                    text: ordertime
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
                Text{
                    id: createdonLabelId
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 431
                    text: orderstatus
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
                Image{
                    source:{
                        if(orderstatus === "active")
                            return "qrc:/images/active.png";
                        else if(orderstatus === "revoked")
                            return "qrc:/images/revoked.png";
                        else if(orderstatus === "cancelled")
                            return "qrc:/images/canceled.png";
                        else if(orderstatus === "expired")
                            return "qrc:/images/expired.png";
                    }

                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 431
                }
            }
        }
    }
}
