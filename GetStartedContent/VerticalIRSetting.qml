import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    x: 83
    y: 7
    width: 225
    height: 450


    RectBorder {
        x: 0
        y: 25
        length: 225
        color: "#37B293"
    }
    Switch_ {
        id: switch_
        x: 0
        y: 225
        width: 86
        height: 26
        text: "On"
    }

    Button_ {
        id: button_
        x: 117
        y: 30
        width: 51
        height: 25
        text: "NUC 3"
        font.pixelSize: 11
    }

    Label {
        x: 22
        y: 67
        font.pixelSize: 13
        text: "Brightness"
        font.family: Constants.font.family
        color: "#37B29A"

        Label {
            x: 0
            y: 192
            color: "#37b29a"
            text: "Foreground"
            font.pixelSize: 13
            font.family: Constants.font.family
        }

        Label {
            x: 106
            y: 192
            color: "#37b29a"
            text: "Background"
            font.pixelSize: 13
            font.family: Constants.font.family
        }

        VerticalDial {
            id: verticalDial3
            x: -15
            y: 214
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
            id: verticalDial4
            x: 95
            y: 214
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

    Label {
        x: 0
        y: 10
        color: "#37b29a"
        text: "AGLC"
        font.pixelSize: 11
        font.family: Constants.font.family
    }

    ComboBox_ {
        id: comboBox_
        x: 0
        y: 30
        width: 110
        height: 25
    }

    Button_ {
        id: button_1
        x: 174
        y: 30
        width: 51
        height: 25
        text: "NUC 5"
        font.pixelSize: 11
    }

    Label {
        x: 139
        y: 67
        color: "#37b29a"
        text: "Contrast"
        font.pixelSize: 13
        font.family: Constants.font.family
    }

    VerticalDial {
        id: verticalDial1
        x: 7
        y: 89
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
        x: 117
        y: 89
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

    RectBorder {
        x: 0
        y: 220
        color: "#37b293"
        length: 225
    }

    Label {
        x: 0
        y: 205
        color: "#37b29a"
        text: "Lap-DnCE"
        font.pixelSize: 11
        font.family: Constants.font.family
    }

    RectBorder {
        x: 0
        y: 415
        color: "#37b293"
        length: 225
    }

    // Label {
    //     x: 0
    //     y: 400
    //     color: "#37b29a"
    //     text: "Temperature range"
    //     font.pixelSize: 11
    //     font.family: Constants.font.family
    // }


    // Rectangle {
    //     y: 419
    //     width: 159
    //     height: 29
    //     radius: 2
    //     anchors.left: parent.left
    //     anchors.leftMargin: 0

    //     Row {
    //         anchors.centerIn: parent
    //         spacing: 1
    //         Repeater {
    //             anchors.fill: parent
    //             model: 6
    //             delegate: Button_ {
    //                 width: 25
    //                 height: 25
    //                 text: String(index + 1)
    //             }
    //         }
    //     }
    //     border.color: "#37b29a"
    //     color: "transparent"

    // }

}
