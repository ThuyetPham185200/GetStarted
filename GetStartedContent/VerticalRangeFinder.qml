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
        text: "Range Finder"
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
            x: 109
            y: 38
            width: 91
            height: 14
            color: "#37b29a"
            text: "Distance: 5km"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Button_ {
            id: button2
            x: 25
            y: 32
            width: 78
            height: 25
            text: "Get range"
            font.pixelSize: 11
        }

        Rectangle {
            x: 25
            y: 64
            width: 148
            height: 174
            color: "#00000000"
            radius: 3
            border.color: "#37b293"
            TextField_ {
                id: textField_
                x: 52
                y: 108
                width: 85
                height: 29
            }

            TextField_ {
                id: textField_2
                x: 52
                y: 33
                width: 85
                height: 29
            }

            TextField_ {
                id: textField_3
                x: 52
                y: 72
                width: 85
                height: 29
            }

            Label {
                x: 16
                y: 41
                color: "#37b29a"
                text: "Lat"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 14
                y: 79
                color: "#37b29a"
                text: "Lon"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 15
                y: 116
                color: "#37b29a"
                text: "Alt"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Button_ {
                id: button3
                x: 16
                y: 143
                width: 56
                height: 25
                text: "Cal"
                font.pixelSize: 11
            }

            Image {
                id: tracker
                x: 5
                y: 5
                width: 28
                height: width
                source: "icons/Tracker_1.svg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            x: 177
            y: 64
            width: 148
            height: 174
            color: "#00000000"
            radius: 3
            border.color: "#37b293"

            Label {
                x: 16
                y: 41
                color: "#37b29a"
                text: "Lat"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 14
                y: 79
                color: "#37b29a"
                text: "Lon"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 15
                y: 116
                color: "#37b29a"
                text: "Alt"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 52
                y: 41
                color: "#37b29a"
                text: "21.345678"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 52
                y: 79
                color: "#37b29a"
                text: "21.345678"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 52
                y: 116
                color: "#37b29a"
                text: "21.345678"
                font.pixelSize: 12
                font.family: Constants.font.family
            }
        }
    }
}
