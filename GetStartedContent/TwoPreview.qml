import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    width: 402
    height: root.width - 2
    color: Constants.transparentColor
    property var dropItem0: drop0
    property var dropItem1: drop1
    property var dragItem1
    property var dragItem0
    Grid {
        id: redDestination
        anchors.fill: parent
        opacity: 0.5
        columns: 2
        spacing: 2
        rows: 1

        DropTile {
            id: drop0
            width: 200
            height: 400
            colorKey: "#2B2D2F"
            Component.onCompleted: {
                drop0.cak = 0
            }
            Connections {
                target: drop0
                function onDropped(drop) {
                    console.log("1" + drop.source)
                    dragItem0 = drop.source
                }

                function onExited() {
                    console.log("2")

                    dragItem0 = null
                }
            }

        }

        DropTile {
            id: drop1
            width: 200
            height: 400
            colorKey: "#2B2D2F"
            Component.onCompleted: {
                drop1.cak = 1
            }
            Connections {
                target: drop1
                function onDropped(drop) {
                    console.log("1" + drop.source)
                    dragItem1 = drop.source
                }

                function onExited() {
                    console.log("2")

                    dragItem1 = null
                }
            }

        }
    }
}
