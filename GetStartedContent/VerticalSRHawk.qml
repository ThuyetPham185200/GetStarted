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
        x: 145
        y: 5
        z: root.z + 1
        horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
        verticalAlignment: Text.AlignVCenter    // Vertically align text in the center
        font.family: Constants.font.family
        text: "SRHawk"
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

    Image {
        id: radar
        x: 25
        y: 32
        source: "icons/export/Radar.svg"
        fillMode: Image.PreserveAspectFit
    }

    Label {
        x: 65
        y: 42
        color: "#37b29a"
        text: "192.168.159.92:2233"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Switch_ {
        id: switch_1
        x: 245
        y: 37
        width: 80
        height: 25
        text: "On"
    }

    Button_ {
        id: button_
        x: 33
        y: 78
        width: 81
        height: 25
        text: "Calib"
        font.pixelSize: 11
    }

    Button_ {
        id: button_1
        x: 125
        y: 78
        width: 92
        height: 25
        text: "North to Park"
        font.pixelSize: 11
    }

    Label {
        x: 33
        y: 118
        color: "#37b29a"
        text: "Range mode"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    ComboBox_ {
        id: comboBox_
        x: 33
        y: 143
        width: 143
        height: 25
    }

    ComboBox_ {
        id: comboBox_1
        x: 239
        y: 143
        width: 86
        height: 25
    }

    Label {
        x: 239
        y: 118
        color: "#37b29a"
        text: "Frequency"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Rectangle {
        x: 25
        y: 312
        width: 300
        height: 68
        color: "#00000000"
        radius: 3
        border.color: "#37b293"

        Label {
            x: 16
            y: 8
            color: "#37b29a"
            text: "Lat"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 16
            y: 28
            color: "#37b29a"
            text: "Lon"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 16
            y: 48
            color: "#37b29a"
            text: "Alt"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 52
            y: 8
            color: "#37b29a"
            text: "21.345678"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 52
            y: 28
            color: "#37b29a"
            text: "21.345678"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 159
            y: 8
            color: "#37b29a"
            text: "Roll"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 159
            y: 28
            color: "#37b29a"
            text: "Pitch"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 159
            y: 48
            color: "#37b29a"
            text: "Yaw"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 52
            y: 48
            color: "#37b29a"
            text: "21.345678"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 206
            y: 8
            color: "#37b29a"
            text: "21.345678"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 206
            y: 28
            color: "#37b29a"
            text: "21.345678"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 206
            y: 48
            color: "#37b29a"
            text: "21.345678"
            font.pixelSize: 12
            font.family: Constants.font.family
        }
    }

    Rectangle {
        x: 25
        y: 393
        width: 300
        height: 68
        color: "#00000000"
        radius: 3
        border.color: "#37b293"
        Label {
            x: 8
            y: 8
            color: "#37b29a"
            text: "Device state"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 8
            y: 28
            color: "#37b29a"
            text: "Radar status"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 99
            y: 8
            width: 24
            height: 14
            color: "#37b29a"
            text: "Nan"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 159
            y: 8
            color: "#37b29a"
            text: "Temperature"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 159
            y: 28
            color: "#37b29a"
            text: "GPS Receiver"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 159
            y: 48
            color: "#37b29a"
            text: "Power"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 99
            y: 28
            color: "#37b29a"
            text: "Nan"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 252
            y: 8
            width: 24
            height: 14
            color: "#37b29a"
            text: "Nan"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 252
            y: 27
            width: 24
            height: 14
            color: "#37b29a"
            text: "Nan"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Label {
            x: 252
            y: 48
            width: 24
            height: 14
            color: "#37b29a"
            text: "Nan"
            font.pixelSize: 12
            font.family: Constants.font.family
        }
    }
    }
}
