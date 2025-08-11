import QtQuick.Window 2.2
import QtQuick.Controls 2.12
import GetStarted
import QtQuick 2.12

DropArea {
    id: dropTile
    width: 100
    height: 100
    property string colorKey: "myKey"
    property int cak: 100
    property string tileLabel: ""


    property var currentDragSource: null

    keys: [ colorKey ]

    Rectangle {
        anchors.fill: parent
        color: dropTile.containsDrag ? "lightgreen" : "lightgray"
        border.color: "black"
    }

    onEntered: {
        console.log("Entered")
    }

    onDropped: {
        currentDragSource = drop.source
        console.log("Dropped from", currentDragSource)
    }

    onExited: {
        currentDragSource = null
        console.log("Exited")
    }
}
