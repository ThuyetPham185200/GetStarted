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
        text: "Calibration"
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
        Button_ {
            id: button_
            x: 25
            y: 32
            width: 81
            height: 25
            text: "Chose file"
            font.pixelSize: 11
        }

        Button_ {
            id: button_1
            x: 119
            y: 32
            width: 81
            height: 25
            text: "Add point"
            font.pixelSize: 11
        }

        Label {
            x: 25
            y: 72
            color: "#37b29a"
            text: "Epsilon"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        TextField_ {
            id: textField_1
            x: 119
            y: 65
            width: 85
            height: 25
            placeholderText: "0.00015"
            font.pixelSize: 12
        }

        Button_ {
            id: button_2
            x: 221
            y: 67
            width: 81
            height: 25
            text: "Calib"
            font.pixelSize: 11
        }

        Rectangle {
            x: 25
            y: 103
            width: 300
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
                x: 191
                y: 28
                width: 85
                height: 29
            }

            TextField_ {
                id: textField_3
                x: 191
                y: 71
                width: 85
                height: 29
            }

            TextField_ {
                id: textField_4
                x: 191
                y: 110
                width: 85
                height: 29
            }

            Label {
                x: 14
                y: 36
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
                y: 36
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
                x: 158
                y: 36
                color: "#37b29a"
                text: "Roll"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 157
                y: 79
                color: "#37b29a"
                text: "Pitch"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Label {
                x: 158
                y: 116
                color: "#37b29a"
                text: "Yaw"
                font.pixelSize: 12
                font.family: Constants.font.family
            }

            Button_ {
                id: button2
                x: 114
                y: 143
                width: 56
                height: 25
                text: "Update"
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
    }
}
