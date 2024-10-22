import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 170
    height: 40
    property alias iconSrc: icon.source
    property alias title: name.text
    property bool choose: false
    signal selected(string title)
    color:root.choose ? "white" : "transparent"
    Image {
        id: icon
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        width: 30
        height: 30
    }

    Text {
        id: name
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: icon.right
        anchors.leftMargin: 10
        color: "#37B29A"
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        enabled: true
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked:selected(name.text)
    }
}
