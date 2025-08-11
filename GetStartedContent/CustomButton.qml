import QtQuick 2.15

Rectangle {
    id: root
    width: 100
    height: 40
    radius: 4
    color: hovered ? "#222222" : "black"
    opacity: pressed ? 0.8 : 1.0

    // Customizable
    property string text: "Button"
    signal clicked()

    property bool hovered: false
    property bool pressed: false

    // Hover & click handling
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: root.clicked()
        onPressed: root.pressed = true
        onReleased: root.pressed = false
        onEntered: root.hovered = true
        onExited: {
            root.hovered = false
            root.pressed = false
        }
        cursorShape: Qt.PointingHandCursor
    }

    // Text centered
    Text {
        id: label
        anchors.centerIn: parent
        text: root.text
        color: "white"
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
