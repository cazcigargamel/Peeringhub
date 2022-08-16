import QtQuick 2.0
import QtQuick.Controls 2.15
import "../../"
import "../../UIComponents/" as UI

Item {
    anchors.fill: parent

    Rectangle{
        anchors{
            top: parent.top
            topMargin: 50
            left: parent.left
            leftMargin: 215
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1170 ; height: 133

        Text {
            text: qsTr("Generate Certificate - Select Numbers")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 47
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }

            color: Constants.text1Color
        }
        Text {
            text: qsTr("Step 1")
            anchors{
                left:parent.left
                leftMargin: 1040
                top: parent.top
                topMargin: 47
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h2
            }

            color: Constants.primaryColor
        }
    }
    Rectangle{
        anchors{
            top: parent.top
            topMargin: 263
            left: parent.left
            leftMargin: 215
        }

        color: Constants.cardBackgroundColor
        radius: 8
        width: 1170 ; height: 628

        UI.PrimaryButtonWithIcon{
            name: "Select"
            icon: "qrc:/images/ok.png"
            anchors{
                top: parent.top
                topMargin: 50
                left: parent.left
                leftMargin: 50
            }
        }

        UI.SecondaryButtonWithIcon{
            name: "Import"
            icon: "qrc:/images/import.png"
            anchors{
                top: parent.top
                topMargin: 50
                left: parent.left
                leftMargin: 264
            }
        }

        UI.SecondaryButtonWithIcon{
            name: "Copy and Paste"
            icon: "qrc:/images/copy.png"
            anchors{
                top: parent.top
                topMargin: 50
                left: parent.left
                leftMargin: 478
            }
        }

        UI.SecondaryButtonWithIcon{
            name: "Specify Range"
            icon: "qrc:/images/specifyRange.png"
            anchors{
                top: parent.top
                topMargin: 50
                left: parent.left
                leftMargin: 692
            }
        }

        Button {
            id: loginButton
            text: "Generate"
            anchors{
                left:parent.left
                leftMargin: 936
                top: parent.top
                topMargin: 50
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h4
            }

            contentItem: Text {
                    text: loginButton.text
                    font: loginButton.font
                    opacity: enabled ? 1.0 : 0.3
                    color: loginButton.down ? Constants.primaryColor : "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            background: Rectangle {
                implicitWidth: 184
                implicitHeight: 50
                radius: 8
                color: loginButton.down? "#FFFFFF" : Constants.primaryColor
                border{
                    color: Constants.primaryColor
                    width: 2
                }
            }

            onClicked: { //stackview.push("qrc:/Account/AccountPage.qml");
                settings.firstTime = false;
                console.log("first time false cekildi")
                loginClicked();
            }
        }

        Text {
            text: qsTr("Number Filter")
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 123
            }
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }

            color: Constants.text1Color
        }
        Rectangle{
            width: 170 ; height: 40
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 155
            }
            color: "transparent"
            border{
                width: 2
                color: Constants.outlineColor
            }
            TextInput{
                anchors.fill: parent
            }
        }

        Rectangle{
            width: 459 ; height: 350
            radius: 5
            anchors{
                left:parent.left
                leftMargin: 50
                top: parent.top
                topMargin: 225
            }
            border{
                width: 2
                color: Constants.outlineColor
            }
            color: "#FFFFFF"
            Text {
                text: qsTr("ID")
                anchors{
                    left:parent.left
                    leftMargin: 104
                    top: parent.top
                    topMargin: 10
                }
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h3
                }

                color: Constants.text1Color
            }
            Text {
                text: qsTr("Phone")
                anchors{
                    left:parent.left
                    leftMargin: 230
                    top: parent.top
                    topMargin: 10
                }
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h3
                }

                color: Constants.text1Color
            }
            Rectangle{
                id: upperLine
                z: 100
                width: 430 ; height: 2
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: 47
                }
                color: Constants.outlineColor
            }
            Rectangle{
                id: bottomLine
                z:100
                width: 430 ; height: 2
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: 297
                }
                color: Constants.outlineColor
            }
            ListView{
                id: listViewId
                anchors.top: upperLine.bottom
                anchors.left: parent.left
                anchors.bottom: bottomLine.top
                anchors.right: parent.right
                clip: true
                model: listmodelId
                delegate: delegateId
            }
            ListModel{
                id: listmodelId
                ListElement {
                    idd: "1" ;
                    phone: "(480) 555-0103" ;
                    check: "true";
                }
                ListElement {
                    idd: "2" ;
                    phone: "(603) 555-0123" ;
                    check: "false" ;
                }
                ListElement {
                    idd: "3" ;
                    phone: "(239) 555-0108" ;
                    check: "false" ;
                }
                ListElement {
                    idd: "4" ;
                    phone: "(208) 555-0112" ;
                    check: "false" ;
                }
                ListElement {
                    idd: "5" ;
                    phone: "(219) 555-0114" ;
                    check: "true";
                }
            }
            Component{
                id: delegateId
                Rectangle {
                    id: rectId
                    width: parent.width - 2
                    anchors.left: parent.left
                    anchors.leftMargin: 1
                    height: 57
                    CheckBox{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        checked: {
                            if(check === "true") return true;
                            else return false;
                        }

                    }

                    Text{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 104
                        text: idd
                        font{
                            family: Constants.mulishNormal.name
                            pixelSize: Constants.h5
                        }
                        color: Constants.text2Color
                    }
                    Text{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 230
                        text: phone
                        font{
                            family: Constants.mulishNormal.name
                            pixelSize: Constants.h5
                        }
                        color: Constants.text1Color
                    }
            }
        }

    }
        Rectangle{
            width: 581 ; height: 350
            radius: 5
            anchors{
                left:parent.left
                leftMargin: 539
                top: parent.top
                topMargin: 225
            }
            border{
                width: 2
                color: Constants.outlineColor
            }

            Text {
                text: qsTr("Selected Numbers")
                anchors{
                    left:parent.left
                    leftMargin: 30
                    top: parent.top
                    topMargin: 10
                }
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h3
                }

                color: Constants.text1Color
            }
            Image{
                source: "qrc:/images/delete.png"
                anchors{
                    left:parent.left
                    leftMargin: 553
                    top: parent.top
                    topMargin: 16
                }
            }
            Rectangle{
                id: upperRightLine
                width: 561 ; height: 2
                color: Constants.outlineColor
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: 47
                }
            }
            Rectangle{
                id: bottomRightLine
                width: 561 ; height: 2
                color: Constants.outlineColor
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: 297
                }
            }
            Rectangle{
                id: leftVerticalLine
                width: 2 ; height: 212
                color: Constants.outlineColor
                anchors{
                    left: parent.left
                    leftMargin: 193
                    top: parent.top
                    topMargin: 61
                }
            }
            Rectangle{
                id: rightVerticalLine
                width: 2 ; height: 212
                color: Constants.outlineColor
                anchors{
                    left: parent.left
                    leftMargin: 376
                    top: parent.top
                    topMargin: 61
                }
            }
            GridView{
                id: selectedlistViewId
                anchors.top: upperLine.bottom
                anchors.left: parent.left
                anchors.bottom: bottomLine.top
                anchors.right: leftVerticalLine.left
                clip: true
                model: selectedNumbersListmodelId
                delegate: certificatedelegateId
            }
            ListModel{
                id: selectedNumbersListmodelId
                ListElement {
                    phone: "(480) 555-0103" ;
                    check: "true";
                }
                ListElement {
                    idd: "2" ;
                    phone: "(603) 555-0123" ;
                    check: "false" ;
                }
                ListElement {
                    idd: "3" ;
                    phone: "(239) 555-0108" ;
                    check: "false" ;
                }
                ListElement {
                    idd: "4" ;
                    phone: "(208) 555-0112" ;
                    check: "false" ;
                }
                ListElement {
                    idd: "5" ;
                    phone: "(219) 555-0114" ;
                    check: "true";
                }
            }
            Component{
                id: certificatedelegateId
                Rectangle {
                    id: rectId
                    width: parent.width / 3
                    anchors.left: parent.left
                    anchors.leftMargin: 1
                    height: 57
                    CheckBox{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        checked: {
                            if(check === "true") return true;
                            else return false;
                        }

                    }

                    Text{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 104
                        text: phone
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
}
