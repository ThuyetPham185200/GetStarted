import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 600
    height: 400


    Label {
        x: 40
        y: 10
        width: 122
        height: 18
        color: "#37b29a"
        text: "Nhập tọa độ mục tiêu"
        font.pixelSize: 14
        font.family: UIConstants.customFont
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
        x: 438
        y: 79
        width: 85
        height: 30
        text: "Đi tới"
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
}
