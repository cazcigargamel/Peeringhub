pragma Singleton
import QtQuick 2.15

QtObject {

    readonly property FontLoader mulishNormal: FontLoader {
        source: "qrc:/Font/Mulish-Regular.ttf"
    }
    readonly property int h2FontSize: 26
    readonly property int h5FontSize: 15
}
