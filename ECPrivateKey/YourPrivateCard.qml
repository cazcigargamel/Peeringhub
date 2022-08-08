import QtQuick 2.11
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import "../"

Rectangle {
    id: control

    width: 1170 ; height: 400
    color: "#FFFFFF"

    Text{
        text: "Your Current Private Key"
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

    RowLayout {
        id: titleId
        spacing: 50
        anchors {
            left: parent.left
            leftMargin: 50
            top: parent.top
            topMargin: 130
        }
        Text{
            text: "Creation Time"
            color: Constants.text1Color

            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
        }
        Text{
            text: "Expriration Time"
            color: Constants.text1Color

            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
        }
        Text{
            text: "OCN"
            color: Constants.text1Color

            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
        }
    }

    ListView {
        id: listViewId
        anchors.top: titleId.bottom
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        model: listmodelId
        delegate: delegateId
    }
    ListModel {
        id: listmodelId
        ListElement {
            creationTime: "2023-05-13 08:00 AM" ;
            expirationTime: "2023-05-13 14:48 PM" ;
            OCN: "3131" ;
        }
        ListElement {
            creationTime: "2024-05-13 08:00 AM" ;
            expirationTime: "2025-05-13 14:48 PM" ;
            OCN: "3132" ;
        }

    }
    Component{
        id: delegateId
        Rectangle {
            id: rectId
            width: parent.width
            anchors.left: parent.left
            height: 57
        Text{
            id: creationTimeLabelId
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 45
            text: creationTime
            horizontalAlignment: Text.AlignLeft
            font{
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
            color: Constants.text2Color
        }
        Text{
            id: exprationLabelId
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: creationTimeLabelId.right
            anchors.leftMargin: 83
            text: expirationTime
            horizontalAlignment: Text.AlignLeft
            font{
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
            color: Constants.text2Color
        }
        Text{
            id:ocnLabelId
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: exprationLabelId.right
            anchors.leftMargin: 80
            text: OCN
            horizontalAlignment: Text.AlignLeft
            font{
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
            color: Constants.text2Color
        }
        }
    }

    Button {
            id: updateButton
            text: "Update Existing SPC Token"
            anchors{
                left:parent.left
                leftMargin: 50
                bottom: parent.bottom
                bottomMargin: 20
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            contentItem: Text {
                    text: updateButton.text
                    font: updateButton.font
                    opacity: enabled ? 1.0 : 0.3
                    color: updateButton.down ? "red" : "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            background: Rectangle {
                implicitWidth: 184
                implicitHeight: 50
                radius: 8
                color: Constants.primaryColor
            }

            //onClicked: stackview.push("qrc:/Account/AccountPage.qml")
        }
}
