import QtQuick 2.0
import QtQuick.Controls 2.12
import "Account"
Item {
    anchors.fill: parent
    StackView {
        id: stackview
        anchors.fill: parent
        initialItem: "qrc:/VoipEndUser/Login/EndUserLoginPage.qml" //"qrc:/Login/LoginPage.qml"
    }
}
