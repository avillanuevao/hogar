import QtQuick 2.0
import "qrc:/hogar/res/font/Example-Map.js" as MaterialIconExample

Text{

    property string icon: "search"
    property string style: "regular"

    property string resolvedUnicode: {
        switch (style) {
        case "example": return MaterialIconExample.get(icon);
        }
    }

    font.family: {
        switch (style) {
        case "example": return MaterialLoader.exampleFont;
        }
    }

    text: resolvedUnicode
    font.pixelSize: 24
    color: "black"
}
