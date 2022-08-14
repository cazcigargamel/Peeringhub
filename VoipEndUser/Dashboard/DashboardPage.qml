import QtQuick 2.0
import QtQuick.Layouts 1.12
import "../../"

Item {

    Rectangle {
        anchors.fill: parent
        color: Constants.appBackground
        radius: 8
        ActiveNumbersCard {
            id: activateNumbersId
            anchors {
                top: parent.top
                topMargin: 110
                left: parent.left
                leftMargin: 226
            }
        }

        ActiveCertificateCard{
            id: activeCertificateId
            anchors {
                top: parent.top
                topMargin: 110
                left: parent.left
                leftMargin: 672
            }
        }

        StatusCard{
            icon: "qrc:/images/active.png"
            anchors {
                verticalCenter: activeCertificateId.verticalCenter
                left: activeCertificateId.right
                leftMargin: 22
            }
        }

        Rectangle{
            width: 1170 ; height: 508
            radius: 10
            color: Constants.cardBackgroundColor
            anchors {
                top: activateNumbersId.bottom
                topMargin: 40
                left: activateNumbersId.left
            }
            CardInfo{
                icon: ""
                title: "Company Name"
                name: "Inc Company Name"
                anchors {
                    top: parent.top
                    topMargin: 30
                    left: parent.left
                    leftMargin: 30
                }
            }
            CardInfo{
                icon: ""
                title: "Email Address"
                name: "wade@waren.email.com"
                anchors {
                    top: parent.top
                    topMargin: 30
                    left: parent.left
                    leftMargin: 628
                }
            }

            CardInfo{
                icon: ""
                title: "Contact Name"
                name: "Wade Warenn"
                anchors {
                    top: parent.top
                    topMargin: 196
                    left: parent.left
                    leftMargin: 30
                }
            }

            CardInfo{
                icon: ""
                title: "Phone Number"
                name: "(480) 555-0133"
                anchors {
                    top: parent.top
                    topMargin: 230
                    left: parent.left
                    leftMargin: 628
                }
            }

            CardInfo{
                icon: ""
                title: "Title"
                name: "Title Placeholder"
                anchors {
                    top: parent.top
                    topMargin: 362
                    left: parent.left
                    leftMargin: 30
                }
            }

            CardInfo{
                icon: ""
                title: "Access URL"
                name: "https://company.peerhub.io"
                anchors {
                    top: parent.top
                    topMargin: 362
                    left: parent.left
                    leftMargin: 628
                }
            }
        }
    }
}




