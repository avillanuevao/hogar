import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 120
    height: 40
    radius: 6
    color: root.checked ? "#2ecc71" : "#3498db"

    // Propiedad para saber si está marcado
    property bool checked: false
    property alias text: label.text

    // Señal que notifica cambio de estado
    signal toggled(bool checked)

    Text {
        id: label
        anchors.centerIn: parent
        color: "white"
        text: "Botón"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.checked = !root.checked
            root.toggled(root.checked)
        }
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
    }
}
