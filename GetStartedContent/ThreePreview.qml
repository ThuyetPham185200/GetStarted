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
    property var dropItem2: drop2

    Row {
        id: redDestination
        anchors.fill: parent

        spacing: 2
        opacity: 0.5


        // Hai ô nhỏ bên phải (index 1 và 2)
        Column {
            spacing:    1

            DropTile {
                id: drop0
                width: 200
                height: 199
                colorKey: "#2B2D2F"
                Component.onCompleted: {
                    drop0.cak = 0
                }

            }

            DropTile {
                id: drop1
                width: 200
                height: 200
                colorKey: "#2B2D2F"
                Component.onCompleted: {
                    drop1.cak = 1
                }
            }
        }

        // Ô lớn bên trái (index 0)
        DropTile {
            id: drop2
            width: 200
            height: 400
            colorKey: "#2B2D2F"
            Component.onCompleted: {
                drop2.cak = 2
            }
        }
    }
}
