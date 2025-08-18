import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 500
    height: 300

    Slider_ {
        id: slider_
        x: 167
        y: 109
        width: 325
        height: 25
    }

    Label {
        x: 24
        y: 112
        width: 128
        height: 18
        color: "#37b29a"
        text: "Giá trị chỉnh tay"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    QDTSwitch {
        id: switch_
        x: 24
        y: 0
        text: "Chỉnh tay"
    }


    Label {
        x: 24
        y: 64
        width: 128
        height: 18
        color: "#37b29a"
        text: "Chế độ chỉnh tay"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Item {
        x: 161
        y: 36
        width: 313
        height: 74

        RadioButton_ {
            id: radioButton_
            x: 11
            y: 25
            width: 85
            height: 26
            text: "Clear"
        }

        RadioButton_ {
            id: radioButton_1
            x: 114
            y: 25
            width: 85
            height: 26
            text: "ND 1"
        }

        RadioButton_ {
            id: radioButton_2
            x: 228
            y: 25
            width: 85
            height: 26
            text: "ND 2"
        }
    }


}
