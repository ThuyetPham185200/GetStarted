import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
import QtQuick.Layouts

Item {
    id: root
    height: 500
    width: 350
    Rectangle {
        id: bg
        z: root.z - 1
        border.color: "#37B293"
        color: "#2B2D2F"
        radius: 3
        opacity: 0.9
        anchors.fill: parent
    }
    Label {
        x: 125
        y: 5
        z: root.z + 1
        horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
        verticalAlignment: Text.AlignVCenter    // Vertically align text in the center
        font.family: Constants.font.family
        text: "GPS Waypoints"
        color: "#37B293"
    }

    RectBorder {
        id: rectBorder
        x: 25
        y: 25
        z: root.z + 1
        length: 300
        color: "#37B293"
    }

    Item {
        anchors.fill: parent
        z: root.z + 1
        Label {
            x: 25
            y: 32
            color: "#37b29a"
            text: "Lat"
            font.pixelSize: 12
            font.family: Constants.font.family
        }
        Label {
            x: 130
            y: 32
            color: "#37b29a"
            text: "Lon"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 234
            y: 32
            color: "#37b29a"
            text: "Alt"
            font.pixelSize: 12
            font.family: Constants.font.family
        }
        TextField_ {
            id: textField_1
            x: 25
            y: 52
            width: 90
            height: 25
        }

        TextField_ {
            id: textField_5
            x: 130
            y: 52
            width: 90
            height: 25
        }

        TextField_ {
            id: textField_6
            x: 235
            y: 52
            width: 90
            height: 25
        }

        Button_ {
            id: button2
            x: 136
            y: 92
            width: 78
            height: 25
            text: "Goto Target"
            font.pixelSize: 11
        }

        Label {
            x: 13
            y: 134
            width: 325
            height: 13
            color: "#37b29a"
            text: "Waypoints can be load from file and displayed on map!"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Button_ {
            id: button3
            x: 25
            y: 159
            width: 100
            height: 25
            text: "Load waypoints"
            font.pixelSize: 11
        }
    }
}
