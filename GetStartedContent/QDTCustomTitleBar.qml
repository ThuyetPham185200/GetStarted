// TitleBar.qml
import QtQuick 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15

Rectangle {
    id: titleBar
    width: parent.width
    height: 100
    color: "#2B2D2F"
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right

    property Window mainWindow
    property alias controlRow: controlRow_

    MouseArea {
        id: dragArea
        anchors.fill: parent
        onDoubleClicked: {
            if (mainWindow) {
                if (mainWindow.visibility === Window.Maximized) {
                    mainWindow.showNormal()
                } else {
                    mainWindow.showMaximized()
                }
            }
        }
    }

    DragHandler {
        onActiveChanged: if (active && mainWindow) mainWindow.startSystemMove()
        target: titleBar
    }

    Row {
        id: controlRow_
        anchors.right: parent.right
        anchors.rightMargin: 10
        // anchors.top: parent.top
        // anchors.topMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        spacing: 6

        Button {
            id: hidden
            width: 30
            height: 30
            text: "–"

            background: Rectangle {
                color: "#2B2D2F"
                radius: 4
            }
            onClicked: if (mainWindow) mainWindow.showMinimized()

            contentItem: Text {
                text: hidden.text
                font: hidden.font
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
            }
        }


        Button {
            id: zoom
            width: 30
            height: 30
            text: mainWindow && mainWindow.visibility === Window.Maximized ? "❐" : "▢"

            onClicked: {
                if (mainWindow) {
                    if (mainWindow.visibility === Window.Maximized) {
                        mainWindow.showNormal()
                    } else {
                        mainWindow.showMaximized()
                    }
                }
            }

            background: Rectangle {
                color: "#2B2D2F"
                radius: 4
            }

            contentItem: Text {
                text: zoom.text
                font: zoom.font
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
            }
        }


        Button {
            id: close
            width: 30
            height: 30
            text: "✕"
            onClicked: Qt.quit()
            background: Rectangle {
                color: "#2B2D2F"
                radius: 4
            }

            contentItem: Text {
                text: close.text
                font: close.font
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
            }
        }
    }
}
