pragma Singleton
import QtQuick 2.15

QtObject {

    readonly property FontLoader mulishNormal: FontLoader {
        source: "qrc:/Font/Mulish-Regular.ttf"
    }
    readonly property int h2FontSize: 26
    readonly property int h4: 16
    readonly property int h5FontSize: 15

    readonly property color cardBackgroundColor: "#FFFFFF"
    readonly property color appBackground: "#EEF1FF"

    readonly property color text1Color: "#2F3C4E"
    readonly property color inputHintColor: "#C4C4C4"

    readonly property color primaryColor: "#0062FF"
    readonly property color outlineColor: "#E6E6E6"
}