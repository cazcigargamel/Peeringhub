import QtQuick 2.15
import QtQuick.Controls 2.15
import "../"

RadioButton {
    id: control

    property string name: ""
    text: name


    indicator: Rectangle {
        implicitWidth: 14
        implicitHeight: 14
        anchors.verticalCenter: parent.verticalCenter
        radius: 9
        border.color: control.activeFocus ? Constants.primaryColor : Constants.primaryColor
        border.width: 1
        Rectangle {
            anchors.fill: parent
            visible: control.checked
            color: Constants.primaryColor
            radius: 9
            anchors.margins: 3
        }
    }
}
