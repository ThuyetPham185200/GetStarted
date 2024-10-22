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
        x: 150
        y: 5
        z: root.z + 1
        horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
        verticalAlignment: Text.AlignVCenter    // Vertically align text in the center
        font.family: Constants.font.family
        text: "Controller"
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

    Rectangle {
        x: 25
        y: 30
        radius: 3
        border.color: "#37B293"
        color: "transparent"
        height: 308
        width: 300
        z: root.z + 1
        Label {
            x: 8
            y: 11
            color: "#37b29a"
            text: "Multi-Lrss"
            font.pixelSize: 12
            font.family: Constants.font.family
        }
        ComboBox_ {
            id: comboBox_
            x: 74
            y: 5
            width: 94
            height: 25
        }

        Label {
            x: 180
            y: 11
            color: "#37b29a"
            text: "Active"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        ComboBox_ {
            id: comboBox_1
            x: 227
            y: 5
            width: 65
            height: 25
        }

        VirtualJoystick {
            id: virtualJoystick
            x: 40
            y: 56
        }

        Rectangle {
            x: 164
            y: 56
            radius: 2
            border.color: "#37B293"
            color: "transparent"
            height: 100
            width: height
            RadioButton_ {
                id: radioButton_4
                x: 10
                y: 20
                width: 82
                height: 25
                text: "Zoom"
            }

            RadioButton_ {
                id: radioButton_5
                x: 10
                y: 56
                width: 82
                height: 25
                text: "Focus"
            }
        }

        Label {
            x: 33
            y: 178
            color: "#37b29a"
            text: "Zoom value"
            font.pixelSize: 13
            font.family: Constants.font.family
        }

        Label {
            x: 195
            y: 178
            color: "#37b29a"
            text: "Focus value"
            font.pixelSize: 13
            font.family: Constants.font.family
        }

        VerticalDial {
            id: verticalDial1
            x: 21
            y: 200
            Label {
                x: 32
                y: 35
                color: "#37b29a"
                text: "30"
                font.pixelSize: 26
                font.weight: Font.Medium
                font.family: Constants.font.family
            }
        }

        VerticalDial {
            id: verticalDial2
            x: 184
            y: 200
            Label {
                x: 32
                y: 35
                color: "#37b29a"
                text: "30"
                font.pixelSize: 26
                font.weight: Font.Medium
                font.family: Constants.font.family
            }
        }


    }

    Rectangle {
        x: 25
        y: 344
        radius: 3
        border.color: "#37B293"
        color: "transparent"
        height: 122
        width: 300
        z: root.z + 1
        Switch_ {
            id: switch_
            x: 5
            y: 5
            width: 122
            height: 25
            text: "Keyboard"
        }
        Image {
            id: direction
            x: 33
            y: 36
            source: "icons/export/Direction.svg"
            fillMode: Image.PreserveAspectFit
        }

        Label {
            x: 25
            y: 86
            color: "#37b29a"
            text: "Directions"
            font.pixelSize: 13
            font.family: Constants.font.family
        }
        Image {
            id: rKey
            x: 115
            y: 47
            source: "icons/export/RKey.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: plusKey
            x: 152
            y: 46
            width: 34
            height: 35
            source: "icons/export/PlusKey.svg"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: fKey
            x: 216
            y: 46
            source: "icons/export/FKey.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: plusKey1
            x: 252
            y: 46
            width: 34
            height: 35
            source: "icons/export/PlusKey.svg"
            fillMode: Image.PreserveAspectFit
        }

        Label {
            x: 110
            y: 86
            color: "#37b29a"
            text: "Zoom In/Out"
            font.pixelSize: 13
            font.family: Constants.font.family
        }

        Label {
            x: 211
            y: 87
            color: "#37b29a"
            text: "Focus In/Out"
            font.pixelSize: 13
            font.family: Constants.font.family
        }
    }







}
