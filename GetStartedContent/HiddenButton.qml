import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    property alias name: txt.text
    color: mouseArea.containsMouse ? "#3C3F41" : "transparent"
    radius: 2
    //border.color: "#B3A7E4"
    signal select()
    Text {
        id: txt
        anchors.centerIn: parent
        color: "#37B29A"
        font.family: Constants.font.family
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        enabled: true
        hoverEnabled: true
        onClicked: select()
    }
}
