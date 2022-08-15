import QtQuick 2.11
import QtQuick.Layouts 1.12
import "../../"

Item {
    anchors.fill: parent

    Rectangle{
        anchors{
            top: parent.top
            topMargin: 50
            left: parent.left
            leftMargin: 154
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1292 ; height: 133

        Text {
            text: qsTr("Certificate Listing")
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
            leftMargin: 154
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1292 ; height: 567

        Text {
            text: qsTr("Created On")
            anchors{
                left:parent.left
                leftMargin: 51
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Expired On")
            anchors{
                left:parent.left
                leftMargin: 190
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Update Interval")
            anchors{
                left:parent.left
                leftMargin: 326
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Last Updated On")
            anchors{
                left:parent.left
                leftMargin: 478
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Sub ID")
            anchors{
                left:parent.left
                leftMargin: 642
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Cer URL")
            anchors{
                left:parent.left
                leftMargin: 742
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("# of TN")
            anchors{
                left:parent.left
                leftMargin: 953
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Status")
            anchors{
                left:parent.left
                leftMargin: 1071
                top: parent.top
                topMargin: 33
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Action")
            anchors{
                left:parent.left
                leftMargin: 1180
                top: parent.top
                topMargin: 33
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
            anchors.topMargin: 90
        }
        Rectangle{
            id: bottomLine
            width: parent.width ; height: 2
            color: Constants.outlineColor
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 68
        }
        ListView {
            id: listViewId
            anchors.top: upperLine.bottom
            anchors.left: parent.left
            anchors.bottom: bottomLine.bottom
            anchors.right: parent.right
            model: listmodelId
            delegate: delegateId
        }
        ListModel {
            id: listmodelId
            ListElement {
                createdon: "2022-04-24" ;
                expiredon: "2022-04-25" ;
                updateInterval: "24 hours" ;
                lastupdatedon: "2022-04-25" ;
                subid: "ID: 79372" ;
                cerUrl: "http://ca.peeringhub.io" ;
                numberofTN: "256859" ;
                status: "Active" ; //component kisminda icon yap
                action: "View" ;
            }
            ListElement {
                createdon: "2022-03-22" ;
                expiredon: "2022-04-25" ;
                updateInterval: "24 hours" ;
                lastupdatedon: "2022-04-25" ;
                subid: "ID: 79372" ;
                cerUrl: "http://ca.peeringhub.io" ;
                numberofTN: "256859" ;
                status: "Active" ;
                action: "View" ;
            }
            ListElement {
                createdon: "2022-03-05" ;
                expiredon: "2022-04-25" ;
                updateInterval: "24 hours" ;
                lastupdatedon: "2022-04-25" ;
                subid: "ID: 79372" ;
                cerUrl: "http://ca.peeringhub.io" ;
            }
            ListElement {
                createdon: "2022-01-10" ;
                expiredon: "2022-04-25" ;
                updateInterval: "24 hours" ;
                lastupdatedon: "2022-04-25" ;
                subid: "ID: 79372" ;
                cerUrl: "http://ca.peeringhub.io" ;
                numberofTN: "256859" ;
                status: "Active" ;
                action: "View" ;
            }
            ListElement {
                createdon: "2021-12-16" ;
                expiredon: "2022-04-25" ;
                updateInterval: "24 hours" ;
                lastupdatedon: "2022-04-25" ;
                subid: "ID: 79372" ;
                cerUrl: "http://ca.peeringhub.io" ;
                numberofTN: "256859" ;
                status: "Active" ;
                action: "View" ;
            }
            ListElement {
                createdon: "2021-08-06" ;
                expiredon: "2022-04-25" ;
                updateInterval: "24 hours" ;
                lastupdatedon: "2022-04-25" ;
                subid: "ID: 79372" ;
                cerUrl: "http://ca.peeringhub.io" ;
                numberofTN: "256859" ;
                status: "Active" ;
                action: "View" ;
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
                    text: createdon
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
                    anchors.leftMargin: 190
                    text: expiredon
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }

                Text{
                    id: voipuserLabelId
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 334
                    text: updateInterval
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }

                Text{
                    id: organizationLabelId
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 480
                    text: lastupdatedon
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
                Text{
                    id: assignedonLabelId
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 642
                    text: subid
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 742
                    text: cerUrl
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 953
                    text: numberofTN
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 1071
                    text: status
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 1180
                    text: action
                    horizontalAlignment: Text.AlignLeft
                    font{
                        family: Constants.mulishNormal.name
                        pixelSize: Constants.h5
                    }
                    color: Constants.text2Color
                }
            }
        }
    }
}
