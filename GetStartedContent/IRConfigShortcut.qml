import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 600
    height: 400

    Button_ {
        id: button_
        x: 143
        y: 15
        width: 96
        height: 29
        text: "Nuc 3"
    }

    Button_ {
        id: button_1
        x: 284
        y: 15
        width: 96
        height: 29
        text: "Nuc 5"
    }

    Label {
        x: 23
        y: 20
        width: 128
        height: 18
        color: "#37b29a"
        text: "Chế độ Nuc"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 23
        y: 61
        width: 128
        height: 18
        color: "#37b29a"
        text: "Chế độ AGC"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    ComboBox_ {
        id: comboBox_
        x: 41
        y: 96
    }

    Label {
        x: 41
        y: 137
        width: 128
        height: 18
        color: "#37b29a"
        text: "Độ sáng (%)"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Label {
        x: 41
        y: 208
        width: 128
        height: 18
        color: "#37b29a"
        text: "Độ tương phản (%)"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

    Slider_ {
        id: slider_
        x: 41
        y: 167
        width: 474
        height: 25
    }

    Slider_ {
        id: slider_1
        x: 41
        y: 246
        width: 474
        height: 25
    }
}
