import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "../materialIcons"

Rectangle {
    width: 160
    height: 140
    radius: 20
    color: "yellow"

    property string title
    property string iconName

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 8
        spacing: 8

            MaterialIcon {
                icon: iconName
                style: "example"
                font.pixelSize: 36
                color: "black"
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                text: title
                font.pixelSize: 18
                color: "black"
                Layout.alignment: Qt.AlignHCenter
            }
    }
}
