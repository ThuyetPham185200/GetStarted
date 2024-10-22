

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import QtQuick.Controls 6.7
import GetStarted
import QtQuick.Timeline 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.DesignEffects

RectangleItem {
    id: rectangle4
    // anchors.top: statusBar.bottom
    // anchors.topMargin: 10
    // x: parent.width / 2 - 115
    width: 115
    height: 60
    layer.effect: mouseArea
    fillColor: "#73ffffff"
    strokeWidth: -1
    strokeColor: "#4dc7f1"
    adjustBorderRadius: true
    signal selected1(string item)
    Row {
        spacing: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 5
        height: parent.height
        RegularPolygonItem {
            id: regularPolygon

            width: 50
            height: 50
            radius: 0
            strokeWidth: -1

            TextInput {
                id: textInput
                anchors.centerIn: parent

                color: "#4dc7f1"
                text: qsTr("A1")
                font.pixelSize: 9
            }

            DesignEffect {
                visible: true
                effects: [
                    DesignDropShadow {
                        color: "#4DC7F1"
                    }
                ]
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                // When the mouse enters the polygon
                onEntered: {
                    regularPolygon.width = 70 // Increase width when hovering
                    regularPolygon.height = 70 // Increase height when hovering
                    textInput.font.pixelSize = 12
                }

                // When the mouse exits the polygon
                onExited: {
                    regularPolygon.width = 50 // Return to original width
                    regularPolygon.height = 50 // Return to original height
                    textInput.font.pixelSize = 9
                }
                onClicked: selected1("A1")
            }
        }

        RegularPolygonItem {
            id: regularPolygon1
            width: 50
            height: 50
            radius: 0
            strokeWidth: -1

            Text {
                id: text1
                anchors.centerIn: parent
                color: "#4dc7f1"
                text: qsTr("S125")
                font.pixelSize: 9
            }
            DesignEffect {
                visible: true
                effects: [
                    DesignDropShadow {
                        color: "#4DC7F1"
                    }
                ]
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                // When the mouse enters the polygon
                onEntered: {
                    regularPolygon1.width = 70 // Increase width when hovering
                    regularPolygon1.height = 70 // Increase height when hovering
                    text1.font.pixelSize = 12
                }

                // When the mouse exits the polygon
                onExited: {
                    regularPolygon1.width = 50 // Return to original width
                    regularPolygon1.height = 50 // Return to original height
                    text1.font.pixelSize = 9
                }
                onClicked: selected1("S125")
            }
        }
    }
}
