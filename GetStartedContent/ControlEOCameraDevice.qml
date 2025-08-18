import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 943
    height: 434

    Slider_ {
        id: slider_
        x: 187
        y: 194
        width: 550
        height: 25
    }

    Label {
        x: 44
        y: 197
        width: 128
        height: 18
        color: "#37b29a"
        text: "Giá trị chỉnh tay"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    QDTSwitch {
        id: switch_
        x: 44
        y: 85
        text: "Chỉnh tay"
    }

    Label {
        x: 44
        y: 149
        width: 128
        height: 18
        color: "#37b29a"
        text: "Chế độ chỉnh tay"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Item {
        x: 181
        y: 121
        width: 702
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
            x: 275
            y: 25
            width: 85
            height: 26
            text: "ND 1"
        }

        RadioButton_ {
            id: radioButton_2
            x: 500
            y: 25
            width: 85
            height: 26
            text: "ND 2"
        }
    }

    Image {
        id: cameraIP
        x: 8
        y: 8
        width: 273
        height: 43
        source: "images/cameraIP.png"
        fillMode: Image.PreserveAspectFit
    }
}
