import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    property alias name: text.text
    color: mouseArea.containsMouse ? "#3C3F41" : "transparent"
    radius: 2
    //border.color: "#B3A7E4"
    signal clicked()
    Text {
        id: text
        anchors.centerIn: parent
        color: "#37B29A"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: root
        cursorShape: Qt.PointingHandCursor
        enabled: true
        hoverEnabled: true
        onClicked: clicked()
    }
}
