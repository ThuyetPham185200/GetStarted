import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    width: 500
    height: 280
    color: "transparent"

    Frame {
        id: frame
        x: 8
        y: 28
        width: 484
        height: 101
        ComboBox_ {
            id: comboBox
            x: -6
            y: -7
            width: 123
            height: 40
            font.family: Constants.font.family
        }

        Button_ {
            id: button
            x: -6
            y: 39
            width: 55
            height: 40
            font.family: Constants.font.family
            text: qsTr("NUC5")
        }

        Button_ {
            id: button1
            x: 62
            y: 39
            width: 55
            height: 40
            font.family: Constants.font.family
            text: qsTr("NUC3")
        }

        Button_ {
            id: button2
            x: 129
            y: -7
            width: 47
            height: 40
            font.family: Constants.font.family
            text: qsTr("Set")
        }

        Slider_ {
            id: slider
            x: 265
            y: -7
            value: 0.5
        }

        Slider_ {
            id: slider1
            x: 265
            y: 39
            value: 0.5
        }

        Text {
            id: text2
            x: 182
            y: 6
            text: qsTr("Brightness: 0")
            font.pixelSize: 12
            font.family: Constants.font.family
            color: "#37B29A"
        }

        Text {
            id: text3
            x: 182
            y: 52
            text: qsTr("Contrast: 0")
            font.pixelSize: 12
            font.family: Constants.font.family
            color: "#37B29A"
        }
    }

    Text {
        id: text1
        x: 8
        y: 8
        text: qsTr("AGLC")
        font.pixelSize: 12
        font.family: Constants.font.family
        color: "#37B29A"
    }

    Frame {
        id: frame1
        x: 8
        y: 158
        width: 349
        height: 114

        RadioButton_ {
            id: radioButton
            x: -6
            y: -12
            text: qsTr("On")
            font.family: Constants.font.family
        }

        RadioButton_ {
            id: radioButton1
            x: 60
            y: -12
            text: qsTr("Off")
            font.family: Constants.font.family
            Slider_ {
                id: slider2
                x: 61
                y: 30
                value: 0.5
            }
        }

        Slider_ {
            id: slider3
            x: 120
            y: 62
            value: 0.5
        }

        Text {
            id: text5
            x: 0
            y: 28
            text: qsTr("Foreground Level: 0")
            font.pixelSize: 12
            font.family: Constants.font.family
            color: "#37B29A"
        }

        Text {
            id: text6
            x: 0
            y: 69
            text: qsTr("Background Level: 0")
            font.pixelSize: 12
            font.family: Constants.font.family
            color: "#37B29A"
        }
    }

    Text {
        id: text4
        x: 8
        y: 138
        text: qsTr("Lap-DnCE")
        font.pixelSize: 12
        font.family: Constants.font.family
        color: "#37B29A"
    }

    Frame {
        id: frame2
        x: 369
        y: 158
        width: 123
        height: 114

        ComboBox_ {
            id: comboBox1
            x: -5
            y: 18
            width: 60
            font.family: Constants.font.family
            height: 40
        }

        Button_ {
            id: button3
            x: 61
            y: 18
            width: 43
            height: 40
            font.family: Constants.font.family
            text: qsTr("Set")
        }
    }

    Text {
        id: text7
        x: 369
        y: 138
        text: qsTr("Range Finder")
        font.pixelSize: 12
        font.family: Constants.font.family
        color: "#37B29A"
    }
}
