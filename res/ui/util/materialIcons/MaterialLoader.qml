pragma Singleton
import QtQuick 2.0

Item {
    id: fontsLoader
    visible: false

    FontLoader {
        id: example
        source: "qrc:/hogar/res/font/Example.ttf"
    }

    property string exampleFont: example.name
}
