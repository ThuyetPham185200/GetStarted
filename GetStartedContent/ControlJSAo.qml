import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 600
    height: 400

    Rectangle {
        id: mode
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 25
        height: 207
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor

        RecTitle {
        id: recTitle
        x: 8
        y: -18
        title: "Joystich Ảo"
        }

        // Label {
        //     x: 24
        //     y: 10
        //     width: 128
        //     height: 18
        //     color: "#37b29a"
        //     text: "Joystich Ảo"
        //     font.pixelSize: 14
        //             font.family: UIConstants.customFont

        // }

        VirtualJoystick {
            id: virtualJoystick
            anchors.horizontalCenter: parent.horizontalCenter
            y: 69
            anchors.horizontalCenterOffset: -1
        }
    }

    Rectangle {
        id: js
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5
        anchors.top: mode.bottom
        anchors.topMargin: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor


        // Label {
        //     x: 23
        //     y: 18
        //     width: 147
        //     height: 18
        //     color: "#37b29a"
        //     text: "Chọn chế độ Zoom/EO"
        //     font.pixelSize: 14
        //             font.family: UIConstants.customFont

        // }
        RecTitle {
        id: recTitle1
        x: 8
        y: -18
        width: 200
        title: "Chọn chế độ Zoom/EO"
        }

        Rectangle {
            x: 15
            y: 34
            width: 217
            height: 66
            color: "#00000000"
            radius: 2
            border.color: "#37b293"

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
                x: 133
                y: 20
                width: 82
                height: 25
                text: "Focus"
            }
        }
    }



}
