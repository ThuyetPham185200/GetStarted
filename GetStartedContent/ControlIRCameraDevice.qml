import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 943
    height: 434

    Slider_ {
        id: slider_
        x: 92
        y: 182
        width: 627
        height: 25
    }

    Label {
        x: 81
        y: 158
        width: 128
        height: 18
        color: "#37b29a"
        text: "Độ sáng (%)"
        font.pixelSize: 14
        font.family: Constants.font.family
    }

    Label {
        x: 31
        y: 134
        width: 128
        height: 18
        color: "#37b29a"
        text: "Chế độ AGC"
        font.pixelSize: 14
        font.family: Constants.font.family
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

    Button_ {
        id: button_
        x: 92
        y: 88
        width: 143
        height: 29
        text: "Nuc 3"
    }

    Label {
        x: 31
        y: 64
        width: 128
        height: 18
        color: "#37b29a"
        text: "Chế độ Nuc"
        font.pixelSize: 14
        font.family: Constants.font.family
    }

    Button_ {
        id: button_1
        x: 315
        y: 88
        width: 143
        height: 29
        text: "Nuc 5"
    }

    Label {
        x: 81
        y: 221
        width: 128
        height: 18
        color: "#37b29a"
        text: "Độ tương phản (%)"
        font.pixelSize: 14
        font.family: Constants.font.family
    }

    Slider_ {
        id: slider_1
        x: 92
        y: 251
        width: 627
        height: 25
    }
}
