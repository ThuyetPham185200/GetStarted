import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: movableRectangle
    x: 830  // Bind the x position of the rectangle to posX

    property bool moving: false
    property int initialX: 0

    MouseArea {
        id: rectangleMou
        anchors.fill: parent

        hoverEnabled: true
        cursorShape: Qt.SizeHorCursor
        Behavior on y {
            NumberAnimation { duration: 300; easing.type: Easing.OutQuad }
        }
        onPressed: {
            // Start moving when the mouse is pressed
            moving = true;
            initialX = mouseX -  movableRectangle.x;  // Capture the offset of the mouse relative to the Rectangle's current position
        }

        onReleased: {
            moving = false;
        }

        onPositionChanged: {
            if (moving) {
                // Move the rectangle horizontally by adjusting its posX property
                movableRectangle.x = mouseX - initialX;
            }
        }
    }
}
