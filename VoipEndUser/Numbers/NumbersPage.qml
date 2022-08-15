import QtQuick 2.11
import QtQuick.Layouts 1.12
import "../../"
Item {

    Rectangle{
        anchors{
            top: parent.top
            topMargin: 50
            left: parent.left
            leftMargin: 154
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1292 ; height: 792

        Text {
            text: qsTr("Number Listing")
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

        Text {
            text: qsTr("Number")
            anchors{
                left:parent.left
                leftMargin: 305
                top: parent.top
                topMargin: 56
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }

        Rectangle {
            color: "transparent"
            anchors{
                left:parent.left
                leftMargin: 373
                top: parent.top
                topMargin: 50
            }
            width: 154
            height: 39
            border.width: 1
            border.color: Constants.outlineColor
            radius: 8

            TextInput {
                id: numbersTextInputId
                text: "12345"
                color: Constants.text1Color
                anchors.centerIn: parent
                anchors.margins: 20
            }
        }

        Text {
            text: qsTr("Voip User")
            anchors{
                left:parent.left
                leftMargin: 577
                top: parent.top
                topMargin: 56
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }

        Rectangle {
            color: "transparent"
            anchors{
                left:parent.left
                leftMargin: 654
                top: parent.top
                topMargin: 50
            }
            width: 185
            height: 39
            border.width: 1
            border.color: Constants.outlineColor
            radius: 8

            TextInput {
                id: voipuserTextInputId
                text: "Inputplace holder"
                color: Constants.inputHintColor
                anchors.centerIn: parent
                anchors.margins: 20
            }
        }

        Text {
            text: qsTr("Organization")
            anchors{
                left:parent.left
                leftMargin: 899
                top: parent.top
                topMargin: 56
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }

        Rectangle {
            color: "transparent"
            anchors{
                left:parent.left
                leftMargin: 997
                top: parent.top
                topMargin: 50
            }
            width: 185
            height: 39
            border.width: 1
            border.color: Constants.outlineColor
            radius: 8

            TextInput {
                id: organizationTextInputId
                text: "Organization Name"
                color: Constants.inputHintColor
                anchors.centerIn: parent
                anchors.margins: 20
            }
        }

        Text {
            text: qsTr("Number")
            anchors{
                left:parent.left
                leftMargin: 70
                top: parent.top
                topMargin: 139
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }

        Text {
            text: qsTr("Created On")
            anchors{
                left:parent.left
                leftMargin: 285
                top: parent.top
                topMargin: 139
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }

        Text {
            text: qsTr("Voip User")
            anchors{
                left:parent.left
                leftMargin: 482
                top: parent.top
                topMargin: 139
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }

        Text {
            text: qsTr("Organization")
            anchors{
                left:parent.left
                leftMargin: 733
                top: parent.top
                topMargin: 139
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }

        Text {
            text: qsTr("Assigned On")
            anchors{
                left:parent.left
                leftMargin: 1110
                top: parent.top
                topMargin: 139
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h3
            }

            color: Constants.text1Color
        }

        Rectangle{
            id: upperLine
            width: parent.width ; height: 2
            color: Constants.outlineColor
            anchors.top: parent.top
            anchors.topMargin: 186
        }
        Rectangle{
            id: bottomLine
            width: parent.width ; height: 2
            color: Constants.outlineColor
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 59
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
                number: "(406) 555-0120" ;
                createdOn: "2022-04-24" ;
                voipUser: "User placeholder" ;
                organization: "Hooli" ;
                assignedOn: "2022-04-25" ;
            }
            ListElement {
                number: "(205) 555-0100" ;
                createdOn: "2022-04-25" ;
                voipUser: "User placeholder2" ;
                organization: "J-Texon" ;
                assignedOn: "2022-04-26" ;
            }
            ListElement {
                number: "(505) 555-0125" ;
                createdOn: "2022-04-24" ;
                voipUser: "User placeholder" ;
                organization: "Acme Corporation" ;
                assignedOn: "2022-04-25" ;
            }
            ListElement {
                number: "(219) 555-0114" ;
                createdOn: "2022-04-24" ;
                voipUser: "User placeholder" ;
                organization: "Umbrella Corporation" ;
                assignedOn: "2022-04-25" ;
            }
            ListElement {
                number: "(252) 555-0126" ;
                createdOn: "2022-04-24" ;
                voipUser: "User placeholder" ;
                organization: "Genco Pura Olive Oil Company" ;
                assignedOn: "2022-04-25" ;
            }
            ListElement {
                number: "(684) 555-0102" ;
                createdOn: "2022-04-24" ;
                voipUser: "User placeholder" ;
                organization: "Sterling Cooper" ;
                assignedOn: "2022-04-25" ;
            }
            ListElement {
                number: "(229) 555-0109" ;
                createdOn: "2022-04-24" ;
                voipUser: "User placeholder" ;
                organization: "Olivia Pope & Associates" ;
                assignedOn: "2022-04-25" ;
            }
            ListElement {
                number: "(229) 555-0109" ;
                createdOn: "2022-04-24" ;
                voipUser: "User placeholder" ;
                organization: "Massive Dynamic" ;
                assignedOn: "2022-04-25" ;
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
                    anchors.leftMargin: 70
                    text: number
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
                    anchors.leftMargin: 284
                    text: createdOn
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
                    anchors.leftMargin: 481
                    text: voipUser
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
                    anchors.leftMargin: 733
                    text: organization
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
                    anchors.leftMargin: 1109
                    text: assignedOn
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
