import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 600
    height: 400

    Label {
        x: 23
        y: 172
        width: 128
        height: 18
        color: "#37b29a"
        text: "Joystich Ảo"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    VirtualJoystick {
        id: virtualJoystick
        anchors.horizontalCenter: parent.horizontalCenter
        y: 210
        anchors.horizontalCenterOffset: 0
    }

    Label {
        x: 23
        y: 18
        width: 128
        height: 18
        color: "#37b29a"
        text: "Chọn chế độ Zoom/EO"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Rectangle {
        x: 23
        y: 62
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
