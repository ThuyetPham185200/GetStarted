import QtQuick 2.15
import QtQuick.Controls 2.15
Rectangle {
    id: root

    width: 320
    height: 480

    color: "black"

    Grid {
        id: redDestination

        anchors {
            left: redSource.right
            top: parent.top
            margins: 5
        }
        width: 64*3
        height: 64*3
        opacity: 0.5
        columns: 2

        Repeater {
            model: 4
            delegate: DropFunc { colorKey: "red" }
        }
    }

    Grid {
        anchors {
            right: blueSource.left
            bottom: parent.bottom
            margins: 5
        }
        width: 64*3
        height: 64*3

        opacity: 0.5

        columns: 2

        Repeater {
            model: 4
            delegate: DropFunc { colorKey: "blue" }
        }
    }

    Column {
        id: redSource

        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
            margins: 5
        }
        width: 64
        spacing: -16

        Repeater {
            model: 4
            delegate: DragFunc { colorKey: "red" }
        }
    }
    Column {
        id: blueSource

        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            margins: 5
        }
        width: 64
        spacing: -16

        Repeater {
            model: 4
            delegate: DragFunc { colorKey: "blue" }
        }
    }
}
