import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.15

import "Account"
import "Login" as L
import "HeaderBar"
import Qt.labs.settings 1.1

Window {
    id: root
    width: 1600
    height: 1025
    visible: true
    title: qsTr("Hello World")
    color: "#F5F5F5"
    flags: Qt.FramelessWindowHint |
           Qt.WindowMinimizeButtonHint |
           Qt.Window

    Settings{
        id: settings
        property bool firstTime: true
    }
    Component.onCompleted: {
        console.log("main.qml")
        console.log(settings.firstTime)
    }

    Loader {
        id: mainLoader
                anchors {
                    left: parent.left
                    right: parent.right
                    top: parent.top
                    topMargin: 50
                    bottom: parent.bottom
                }
        source: "qrc:/Login/LoginPage.qml"
    }
//    StackView {
//        id: stackview
//        anchors {
//            left: parent.left
//            right: parent.right
//            top: topbar.bottom
//            bottom: parent.bottom
//        }
//        initialItem: "StackViewPage.qml"
//    }


    TopBar {
        id: topbar

        onMinimizeClicked: root.showMinimized();
        onCloseClicked: root.close();
        onAccountClicked: {
            console.log("account clicked");
            mainLoader.source = "qrc:/Account/InitialAccountPage.qml";
        }
        onOrganizationInfoClicked: {
            console.log("spc token clicked");
            mainLoader.source = "qrc:/SPCToken/SPCPage.qml";
        }

        onSPCTokenClicked: {
            console.log("spc token clicked  ");
            mainLoader.source = "qrc:/SPCToken/SPCPage.qml";
        }

        onECPrivateKeyClicked: {
            console.log("EC Private clicked");
            mainLoader.source = "qrc:/ECPrivateKey/ECPrivateKeyPage.qml";
        }

        onDashboardClicked: {
            console.log("EC Private clicked");
            mainLoader.source = "qrc:/VoipEndUser/Dashboard/DashboardPage.qml";
        }

        onNumbersClicked: {
            mainLoader.source = "qrc:/VoipEndUser/Numbers/NumbersPage.qml"
        }
        onCertificateClicked: {
            mainLoader.source = "qrc:/VoipEndUser/Certificate/CertificatePage.qml"
        }
        onOrdersClicked: {
            mainLoader.source = "qrc:/VoipEndUser/Orders/OrdersPage.qml"
        }
        onOrdercertificateClicked: {
            mainLoader.source = "qrc:/VoipEndUser/OrderCertificate/OrderCertificatePage.qml"
        }
    }
}
