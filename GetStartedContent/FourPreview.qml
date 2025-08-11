import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Rectangle {
    id: root
    width: 404
    height: root.width

    property var dropItem0
    property var dropItem1
    property var dropItem2
    property var dropItem3

    color: Constants.transparentColor

    Grid {
        id: redDestination
        anchors.fill: parent
        opacity: 0.5
        columns: 2
        spacing: 1
        rows: 2

        Repeater {
            model: 4
            delegate: DropTile {
                id: drop
                width: 200
                height: 200
                colorKey: "#2B2D2F"

                // gán index vào property của root
                Component.onCompleted: {
                    root["dropItem" + index] = drop
                     drop.cak = index
                    console.log(root.dropItem0)
                    console.log(root.dropItem1)
                    console.log(root.dropItem2)
                    console.log(root.dropItem3)
                }
            }
        }
    }
}
