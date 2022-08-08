import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "../"
import "../UIComponents" as UI

Rectangle {

    width: 1170 ; height: 585
    radius: 10
    color: Constants.cardBackgroundColor

    Text {
        text: "Type of certificate"
        font {
            family: Constants.mulishNormal.name
            pixelSize: Constants.h5
        }
        anchors {
            top: parent.top
            topMargin: 50
            left: parent.left
            leftMargin: 100
        }
        color: Constants.text1Color
    }

    RowLayout {
        spacing: 30
        anchors {
            left: parent.left
            leftMargin: 100
            top: parent.top
            topMargin: 98
        }

        UI.RadioButton {
            text: "Subordinate Certificate Authority"

        }

        UI.RadioButton{
            text: "End-Entity"
        }
    }

    RowLayout {
        spacing: 343

        anchors {
            left: parent.left
            leftMargin: 100
            top: parent.top
            topMargin: 143
        }
        Text {
            text: "Certificate Effective On"
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
            color: Constants.text1Color
        }

        Text {
            text: "Certificate Expired On"
            font {
                family: Constants.mulishNormal.name
                pixelSize: Constants.h5
            }
            color: Constants.text1Color
        }
    }
}
