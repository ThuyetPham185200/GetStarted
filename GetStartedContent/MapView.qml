import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    radius: 5
    property string name: "Map"
    width: parent.width
    height: parent.height
    color: "#3C3F41"
    border.color: "green"
    anchors.fill: parent
    visible: width > 0
    Label {
        id: eo
        color: "#37B29A"
        text:String(root)
        anchors.centerIn: parent
        font.family: Constants.font.family
    }
    states: State {
        name: "loaded"
        PropertyChanges { target: root; opacity: 1 }
    }

    transitions: Transition {
        NumberAnimation { duration: 500; property: "opacity"; from: 0; to: 1 }
    }

    AzRadarWindow {
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -100
        width: 300
        height: 300

    }
    Waypoint {
        x: 91
        y: 60
        number: "1"
    }

    Waypoint {
        x: 73
        y: 124
        number: "2"
    }

    Waypoint {
        x: 136
        y: 75
        number: "3"
    }

    Waypoint {
        x: 124
        y: 144
        number: "4"
    }

    Waypoint {
        x: 189
        y: 111
        number: "5"
    }

    Waypoint {
        x: 548
        y: 274
        number: "1"
        border.color: "orange"
    }

    Waypoint {
        x: 530
        y: 338
        number: "2"
        border.color: "orange"
    }

    Waypoint {
        x: 593
        y: 289
        rotation: -16.783
        number: "3"
        border.color: "orange"
    }

    Waypoint {
        x: 581
        y: 358
        number: "4"
        border.color: "orange"
    }

    Waypoint {
        x: 646
        y: 325
        number: "5"
        border.color: "orange"
    }

    // Repeater {
    //     anchors.fill: parent

    // }
    // MouseArea {
    //     id: rootMou
    //     anchors.fill: parent
    //     property int edgeThreshold: 30

    //     property bool resizing: false
    //     property int initialY: 0
    //     property int initialX: 0
    //     hoverEnabled: true
    //     onPressed: {
    //         if (mouseY >= root.height - edgeThreshold || mouseX >= root.width - edgeThreshold) {
    //             resizing = true;
    //             initialY = mouseY;
    //             initialX = mouseX;
    //         }
    //     }

    //     onReleased: {
    //         resizing = false;

    //     }
    //     onPositionChanged: {
    //         // Adjust size only if resizing
    //         if (mouseY >= root.height - edgeThreshold && mouseX >= root.width - edgeThreshold
    //                  || mouseY >= root.height - edgeThreshold
    //                 || mouseX >= root.width - edgeThreshold) {
    //             rootMou.cursorShape = Qt.ClosedHandCursor;
    //         } else {
    //             rootMou.cursorShape = Qt.ArrowCursor;
    //         }
    //         if (resizing) {
    //             // Vertical resize if the cursor is near the bottom edge
    //             if (mouseY >= root.height - edgeThreshold) {
    //                 var deltaY = mouseY - initialY;
    //                 if (root.height + deltaY > 0) {
    //                     root.height += deltaY;
    //                     initialY = mouseY; // Update for smoother resizing
    //                 }
    //             }

    //             // Horizontal resize if the cursor is near the right edge
    //             if (mouseX >= root.width - edgeThreshold) {
    //                 var deltaX = mouseX - initialX;
    //                 if (root.width + deltaX > 0) {
    //                     root.width += deltaX;
    //                     initialX = mouseX; // Update for smoother resizing
    //                 }
    //             }
    //             // Update cursor based on mouse proximity to edges
    //             if (mouseY >= root.height - edgeThreshold && mouseX >= root.width - edgeThreshold) {
    //                 rootMou.cursorShape = Qt.SizeFDiagCursor; // Diagonal resizing cursor (bottom-right corner)
    //             } else if (mouseY >= root.height - edgeThreshold) {
    //                 rootMou.cursorShape = Qt.SizeVerCursor; // Vertical resizing cursor (bottom edge)
    //             } else if (mouseX >= root.width - edgeThreshold) {
    //                 rootMou.cursorShape = Qt.SizeHorCursor; // Horizontal resizing cursor (right edge)
    //             }

    //         }
    //     }
    // }
}

