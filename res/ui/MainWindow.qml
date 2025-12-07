import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "util/materialIcons"
import "util/components"

ApplicationWindow {
    visible: true
    width: Screen.width
    height: Screen.height
    title: "Main Window"

    ColumnLayout {
        spacing: 4
        anchors.fill: parent

        Item {
            Layout.fillHeight: true
        }

        Rectangle {
            id: firstRectangle
            Layout.fillWidth: true
            Layout.preferredHeight: 400
            color: "green"
            border.color: "green"
            border.width: 1
            radius: 4

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 8
                spacing: 8

                GridLayout {
                    // anchors.centerIn: parent
                    columns: 2
                    columnSpacing: 4
                    rowSpacing: 4
                    Layout.alignment: Qt.AlignHCenter

                    RoomCard { title: "Salón"; iconName: "home" }
                    RoomCard { title: "Cocina"; iconName: "home" }
                    RoomCard { title: "Dormitorio"; iconName: "home" }
                    RoomCard { title: "Lavandería";iconName: "home" }
                }

                Text {
                    text: "EJEMPLO TEXTO"
                    font.pixelSize: 18
                    color: "black"
                    Layout.alignment: Qt.AlignHCenter
                }
            }
        }

        Rectangle {
            id: secondRectangle
            Layout.preferredHeight: 100
            Layout.preferredWidth:  400
            Layout.alignment: Qt.AlignHCenter
            color: "blue"
            border.color: "blue"
            border.width: 1
            radius: 4

            RowLayout {
                anchors.fill: parent
                anchors.margins: 8
                spacing: 4
                Layout.alignment: Qt.AlignHCenter


                ToggleButton {
                    text: "Opción 1"
                    onToggled: checked => console.log("Opción 1:", checked)
                }

                ToggleButton {
                    text: "Opción 2"
                    onToggled: checked => console.log("Opción 2:", checked)
                }

                ToggleButton {
                    text: "Opción 3"
                    onToggled: checked => console.log("Opción 3:", checked)
                }
            }
        }
    }
}
