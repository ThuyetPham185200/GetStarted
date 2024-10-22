import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: movableRectangle
    color: "transparent"
    y: 530
    property real posY: 530
    property bool moving: false
    property int initialY: 0

    MouseArea {
        id: rectangleMou
        anchors.fill: parent
        Behavior on y {
            NumberAnimation { duration: 1000; easing.type: Easing.OutQuad }
        }
        hoverEnabled: true
        cursorShape: Qt.SizeVerCursor
        onPressed: {
            // Start moving when the mouse is pressed
            moving = true;
            initialY = mouseY - movableRectangle.y ;  // Capture the offset of the mouse relative to the Rectangle's current position
        }

        onReleased: {
            moving = false;
        }

        onPositionChanged: {
            if (moving) {
                // Move the rectangle vertically by adjusting its posY property
                movableRectangle.y = mouseY - initialY;
            }
        }

    }
}
