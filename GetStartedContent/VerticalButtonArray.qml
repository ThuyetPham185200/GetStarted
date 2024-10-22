import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 5 * 25 + 7
    height: 25

    Row {
        anchors.fill: parent
        spacing:
        Repeater {
            model: 5
            delegate: SquareButton {
                title: index
            }
        }
    }
}
