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
        anchors.topMargin: 10
        height: 75
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor
    }
    Label {
        x: 27
        y: 248
        width: 318
        height: 22
        color: "#37b29a"
        text: "Đặt giá trị vận tốc lớn nhất cho Pan, Tilt"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 27
        y: 98
        width: 249
        height: 18
        color: "#37b29a"
        text: "Đi tới vị trí Azimuth, Elevation"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 50
        y: 140
        width: 67
        height: 18
        color: "#37b29a"
        text: "Azimuth"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 50
        y: 183
        width: 67
        height: 18
        color: "#37b29a"
        text: "Elevation"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    // TextField_ {
    //     id: textField_
    //     x: 143
    //     y: 57
    //     width: 116
    //     height: 25
    // }

    // TextField_ {
    //     id: textField_1
    //     x: 143
    //     y: 100
    //     width: 116
    //     height: 25
    // }

    QDTTextField {
        id: qDTTextField
        x: 204
        y: 142
    }

    QDTTextField {
        id: qDTTextField1
        x: 204
        y: 185
    }

    Label {
        x: 340
        y: 140
        width: 38
        height: 18
        color: "#37b29a"
        text: "deg"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 340
        y: 183
        width: 40
        height: 18
        color: "#37b29a"
        text: "deg"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Button_ {
        id: button_
        x: 412
        y: 154
        width: 70
        height: 30
        text: "Đi tới"
    }

    Label {
        x: 27
        y: 40
        width: 128
        height: 18
        color: "#37b29a"
        text: "Đừng khẩn cấp"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Button_ {
        id: button_1
        x: 247
        y: 34
        width: 106
        height: 30
        text: "Đừng tất cả"
    }



    Label {
        x: 50
        y: 285
        width: 147
        height: 18
        color: "#37b29a"
        text: "Vận tốc Pan tối đa"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 50
        y: 330
        width: 147
        height: 18
        color: "#37b29a"
        text: "Vận tốc Tilt tối đa"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    // TextField_ {
    //     id: textField_
    //     x: 232
    //     y: 282
    // }

    // TextField_ {
    //     id: textField_1
    //     x: 232
    //     y: 330
    // }

    QDTTextField {
        id: qDTTextField2
        x: 232
        y: 282
    }

    QDTTextField {
        id: qDTTextField3
        x: 232
        y: 330
    }

    Label {
        x: 379
        y: 285
        width: 63
        height: 18
        color: "#37b29a"
        text: "deg/s"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 379
        y: 330
        width: 63
        height: 18
        color: "#37b29a"
        text: "deg/s"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Button_ {
        id: button_2
        x: 472
        y: 299
        width: 85
        height: 30
        text: "Cập nhật"
    }

    Label {
        x: 140
        y: 140
        width: 48
        height: 18
        color: "#37b29a"
        text: "0.00"
        font.pixelSize: 14
        font.family: UIConstants.customFont

    }

    Label {
        x: 140
        y: 183
        width: 48
        height: 18
        color: "#37b29a"
        text: "0.00"
        font.pixelSize: 14
        font.family: UIConstants.customFont

    }

    Rectangle {
        id: mode1
        height: 136
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        anchors.topMargin: 91
    }

    Rectangle {
        id: mode2
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: mode1.bottom
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        anchors.topMargin: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
    }


}
