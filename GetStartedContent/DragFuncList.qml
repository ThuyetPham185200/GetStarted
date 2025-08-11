import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: redSource

    color: Constants.transparentColor

    width: 65 * 4 + 3 * 3

    function returnAscestor() {
        for (var i = 0; i < repeater.count; i++)
            repeater.itemAt(i).returnAscestor()
    }
    ListModel {
        id: listModel
        ListElement {tileLabel: "CTRL"}
        ListElement {tileLabel: "EO"}
        ListElement {tileLabel: "IR"}
        ListElement {tileLabel: "MAP"}

    }
    Row {
        id: rowHome
        anchors.centerIn: parent
        spacing: 3
        Repeater {
            id: repeater
            model: listModel
            delegate: DragTile {
                colorKey: "#2B2D2F"
                homeContainer: rowHome
            }
        }
    }
}
