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
        height: 148
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor
    }

    Label {
        x: 40
        y: 44
        width: 122
        height: 18
        color: "#37b29a"
        text: "Latitude (deg)"
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


    Label {
        x: 18
        y: 14
        width: 249
        height: 18
        color: "#37b29a"
        text: "Vị trí thiết bị"
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



    Button_ {
        id: button_2
        x: 452
        y: 80
        width: 85
        height: 30
        text: "Cập nhật"
    }

    Label {
        x: 40
        y: 128
        width: 112
        height: 18
        color: "#37b29a"
        text: "Altitude (deg)"
        font.pixelSize: 14
        font.family: UIConstants.customFont
    }

    Label {
        x: 40
        y: 86
        width: 84
        height: 18
        color: "#37b29a"
        text: "Longtitude (deg)"
        font.pixelSize: 14
        font.family: UIConstants.customFont
    }

    // TextField_ {
    //     id: textField_
    //     x: 211
    //     y: 49
    // }

    // TextField_ {
    //     id: textField_1
    //     x: 211
    //     y: 89
    // }

    // TextField_ {
    //     id: textField_2
    //     x: 211
    //     y: 132
    // }

    QDTTextField {
        id: qDTTextField4
        x: 218
        y: 38
    }



    QDTTextField {
        id: qDTTextField5
        x: 218
        y: 79
    }

    QDTTextField {
        id: qDTTextField6
        x: 218
        y: 119
    }

    Label {
        x: 18
        y: 182
        width: 90
        height: 18
        color: "#37b29a"
        text: "Đo xa"
        font.pixelSize: 14
        font.family: UIConstants.customFont
    }

    Button_ {
        id: button_3
        x: 143
        y: 176
        width: 85
        height: 30
        text: "Đo xa"
    }

    Label {
        x: 40
        y: 268
        width: 122
        height: 18
        color: "#37b29a"
        text: "Latitude (deg)"
        font.pixelSize: 14
        font.family: UIConstants.customFont
    }

    Label {
        x: 40
        y: 343
        width: 112
        height: 18
        color: "#37b29a"
        text: "Altitude (deg)"
        font.pixelSize: 14
        font.family: UIConstants.customFont
    }

    Label {
        x: 40
        y: 304
        width: 84
        height: 18
        color: "#37b29a"
        text: "Longtitude (deg)"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 211
        y: 268
        width: 122
        height: 18
        color: "#37b29a"
        text: "23.3456"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 211
        y: 304
        width: 122
        height: 18
        color: "#37b29a"
        text: "23.3456"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 211
        y: 343
        width: 122
        height: 18
        color: "#37b29a"
        text: "23.3456"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 18
        y: 213
        width: 90
        height: 18
        color: "#37b29a"
        text: "Mục tiêu"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 40
        y: 237
        width: 90
        height: 18
        color: "#37b29a"
        text: "Khoảng cách (m)"
        font.pixelSize: 14
        font.family: UIConstants.customFont

    }

    Label {
        x: 211
        y: 237
        width: 122
        height: 18
        color: "#37b29a"
        text: "23.3456"
        font.pixelSize: 14
        font.family: UIConstants.customFont

    }

    Rectangle {
        id: mode1
        height: 231
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: mode.bottom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        anchors.topMargin: 6
    }
}
