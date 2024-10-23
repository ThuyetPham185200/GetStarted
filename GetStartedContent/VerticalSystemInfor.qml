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
        x: 100
        y: 5
        z: root.z + 1
        horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
        verticalAlignment: Text.AlignVCenter    // Vertically align text in the center
        font.family: Constants.font.family
        text: "System Information"
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
        z: root.z + 1
        anchors.fill: parent



        Rectangle {
            x: 25
            y: 32
            width: 300
            height: 83
            color: "#00000000"
            radius: 3
            border.color: "#37b293"
            Label {
                x: 8
                y: 8
                color: "#37b29a"
                text: "Software"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 8
                y: 28
                color: "#37b29a"
                text: "Name"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 158
                y: 28
                color: "#37b29a"
                text: "Release"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 158
                y: 54
                color: "#37b29a"
                text: "Version"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 67
                y: 28
                color: "#37b29a"
                text: "SkyView"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 219
                y: 28
                width: 73
                height: 14
                color: "#37b29a"
                text: "21/12/2024"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 219
                y: 54
                width: 40
                height: 14
                color: "#37b29a"
                text: "1.0.0"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 8
                y: 54
                color: "#37b29a"
                text: "Mission"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 67
                y: 54
                color: "#37b29a"
                text: "S125"
                font.pixelSize: 12
                font.family: Constants.font.family
            }
        }

        Rectangle {
            x: 25
            y: 135
            width: 300
            height: 91
            color: "#00000000"
            radius: 3
            border.color: "#37b293"

            Label {
                x: 12
                y: 37
                color: "#37b29a"
                text: "UAV Log Directory"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 141
                y: 8
                color: "#37b29a"
                text: "home/documents/logs"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 12
                y: 64
                color: "#37b29a"
                text: "Video Log Directory"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 12
                y: 8
                color: "#37b29a"
                text: "Log Directory"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 141
                y: 37
                color: "#37b29a"
                text: "home/documents/UAV..."
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 141
                y: 64
                color: "#37b29a"
                text: "home/documents/videos"
                font.pixelSize: 12
                font.family: Constants.font.family
            }
        }
    }
}

