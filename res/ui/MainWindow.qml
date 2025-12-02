import QtQuick 2.15
import QtQuick.Controls 2.15

import "util/materialIcons"

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Main Window"

    MaterialIcon {
        icon: "home"
        style: "example"
        font.pixelSize: 24
        color: "green"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
    }
}
