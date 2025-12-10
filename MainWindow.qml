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

    RowLayout {
        anchors.fill: parent
        spacing: 8

        Rectangle {
            id: leftSidebar
            Layout.preferredWidth: 200
            Layout.fillHeight: true
            color: "#303030"
            radius: 4
            Layout.alignment: Qt.AlignHCenter

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 8
                spacing: 8
                anchors.centerIn: parent

                Item {
                    Layout.preferredHeight: leftSidebar.height / 6
                }

                Text {
                    text: "MENÚ"
                    color: "white"
                    font.pixelSize: 20
                    Layout.alignment: Qt.AlignHCenter
                }

                Repeater {
                    model: ["Opción A", "Opción B", "Opción C"]

                    delegate: ToggleButton {
                        text: modelData
                        Layout.alignment: Qt.AlignHCenter
                    }
                }

                Item {
                    Layout.preferredHeight: leftSidebar.height / 6
                }
            }
        }

        ColumnLayout {
            spacing: 4
            Layout.fillWidth: true
            Layout.fillHeight: true

            Item {
                Layout.fillHeight: true
            }

            Rectangle {
                id: firstRectangle
                Layout.fillWidth: true
                Layout.preferredHeight: 300
                color: "pink"
                border.color: "green"
                border.width: 1
                radius: 4

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 8
                    spacing: 8

                    GridLayout {
                        columns: 2
                        columnSpacing: 4
                        rowSpacing: 4
                        Layout.alignment: Qt.AlignHCenter

                        RoomCard { title: "Salón"; iconName: "home" }
                        RoomCard { title: "Cocina"; iconName: "home" }
                        RoomCard { title: "Dormitorio"; iconName: "home" }
                        RoomCard { title: "Lavandería"; iconName: "home" }
                    }
                }
            }

            Rectangle {
                id: secondRectangle
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
                        columns: 2
                        columnSpacing: 4
                        rowSpacing: 4
                        Layout.alignment: Qt.AlignHCenter

                        RoomCard { title: "Salón"; iconName: "home" }
                        RoomCard { title: "Cocina"; iconName: "home" }
                        RoomCard { title: "Dormitorio"; iconName: "home" }
                        RoomCard { title: "Lavandería"; iconName: "home" }
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
                id: thridRectangle
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

                    Repeater {
                        model: ["Opción A", "Opción B", "Opción C"]

                        delegate: ToggleButton {
                            text: modelData
                        }
                    }
                }
            }
        }
    }
}
