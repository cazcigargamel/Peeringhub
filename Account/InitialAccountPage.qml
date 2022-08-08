import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.15
import "../"

Item {

    Rectangle {
        anchors.fill: parent
        color: Constants.appBackground

        RowLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 70
            anchors{
                top: parent.top
                topMargin: 70
            }
            Button {
                text: "Certificates"
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h2
                }
                onClicked: {
                    console.log("Certificates clicked");
                    stackview.replace("qrc:/Account/AccountPage.qml");
                }
            }

            Button {
                text: "Private Key"
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h2
                }
            }

            Button {
                text: "SPC Token"
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h2
                }
            }

            Button {
                text: "Order Certificates"
                font {
                    family: Constants.mulishNormal.name
                    pixelSize: Constants.h2
                }
                onClicked: {
                    console.log("Order Certificates clicked");

                }
            }
        }
    }
}
