import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    width: 300
    height: 450

    Rectangle {
        x: 0
        y: 5
        radius: 3
        border.color: "#37B293"
        color: "transparent"
        height: 157
        width: 300
        Image {
            id: uAV
            x: 5
            y: 0
            source: "icons/export/UAV.svg"
            fillMode: Image.PreserveAspectFit
        }

        ComboBox_ {
        id: comboBox_
        x: 46
        y: 10
        width: 94
        height: 25
        }
        Label {
            x: 149
            y: 21
            color: "#37b29a"
            text: "192.168.159.92:2233"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Switch_ {
            id: switch_
            x: 8
            y: 77
            width: 122
            height: 25
            text: "Connect"
        }

        Switch_ {
            id: switch_1
            x: 8
            y: 118
            width: 122
            height: 25
            text: "On"
        }

        Switch_ {
            id: switch_2
            x: 123
            y: 77
            width: 122
            height: 25
            text: "Track GPS"
        }

        Button_ {
            id: button_
            x: 123
            y: 118
            width: 81
            height: 25
            text: "Go to Target"
            font.pixelSize: 11
        }

    }

    Rectangle {
        x: 0
        y: 176
        width: 300
        height: 254

        color: "#00000000"
        radius: 3
        border.color: "#37b293"
        Image {
            id: radar
            x: 3
            y: 8
            source: "icons/export/Radar.svg"
            fillMode: Image.PreserveAspectFit
        }


        Button_ {
            id: button1
            x: 123
            y: 57
            width: 81
            height: 25
            text: "Go to Target"
            font.pixelSize: 11
        }
        Label {
            x: 43
            y: 18
            color: "#37b29a"
            text: "192.168.159.92:2233"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        Switch_ {
            id: switch_3
            x: 8
            y: 57
            width: 122
            height: 25
            text: "Connect"
        }

        Rectangle {
            x: 8
            y: 94
            radius: 3
            border.color: "#37B293"
            color: "transparent"
            height: 152
            width: 284

            TextField_ {
                id: textField_
                x: 52
                y: 88
                width: 85
                height: 29
            }

            TextField_ {
                id: textField_1
                x: 191
                y: 8
                width: 85
                height: 29
            }

            TextField_ {
                id: textField_2
                x: 191
                y: 51
                width: 85
                height: 29
            }

            TextField_ {
                id: textField_3
                x: 191
                y: 90
                width: 85
                height: 29
            }

            // RectBorder {
            //     id: rectBorder
            //     x: 94
            //     y: 65
            //     width: 100
            //     length: 300
            //     color: "#37B293"
            //     rotation: 90
            // }

            Label {
                x: 14
                y: 16
                color: "#37b29a"
                text: "Lat"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 14
                y: 59
                color: "#37b29a"
                text: "Lon"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 15
                y: 96
                color: "#37b29a"
                text: "Alt"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 52
                y: 16
                color: "#37b29a"
                text: "21.345678"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 52
                y: 59
                color: "#37b29a"
                text: "21.345678"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 158
                y: 16
                color: "#37b29a"
                text: "Roll"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 157
                y: 59
                color: "#37b29a"
                text: "Pitch"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 158
                y: 96
                color: "#37b29a"
                text: "Yaw"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Button_ {
                id: button2
                x: 114
                y: 123
                width: 56
                height: 25
                text: "Update"
                font.pixelSize: 11
            }
        }


    }





}
