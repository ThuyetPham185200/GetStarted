import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    width: 225
    height: 450

    Image {
        id: radar
        x: 3
        y: 6
        source: "icons/Radar.svg"
        fillMode: Image.PreserveAspectFit
    }


    Button_ {
        id: button1
        x: 115
        y: 48
        width: 81
        height: 25
        text: "Go to Target"
        font.pixelSize: 11
    }
    Label {
        x: 43
        y: 18
        color: "#37b29a"
        text: "192.168.159.92:2233"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Switch_ {
        id: switch_3
        x: 5
        y: 48
        width: 112
        height: 25
        text: "Connect"
    }

    TextField_ {
        id: textField_
        x: 32
        y: 162
        width: 73
        height: 29
    }

    TextField_ {
        id: textField_1
        x: 148
        y: 83
        width: 70
        height: 29
    }

    TextField_ {
        id: textField_2
        x: 148
        y: 123
        width: 70
        height: 29
    }

    TextField_ {
        id: textField_3
        x: 148
        y: 162
        width: 70
        height: 29
    }

    // RectBorder {
    //     id: rectBorder
    //     x: 94
    //     y: 65
    //     width: 100
    //     length: 300
    //     color: "#37B293"
    //     rotation: 90
    // }

    Label {
        x: 5
        y: 90
        color: "#37b29a"
        text: "Lat"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Label {
        x: 5
        y: 130
        color: "#37b29a"
        text: "Lon"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Label {
        x: 5
        y: 169
        color: "#37b29a"
        text: "Alt"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Label {
        x: 32
        y: 90
        color: "#37b29a"
        text: "21.345678"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Label {
        x: 32
        y: 130
        color: "#37b29a"
        text: "21.345678"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Label {
        x: 111
        y: 90
        color: "#37b29a"
        text: "Roll"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Label {
        x: 111
        y: 130
        color: "#37b29a"
        text: "Pitch"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Label {
        x: 111
        y: 169
        color: "#37b29a"
        text: "Yaw"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Button_ {
        id: button2
        x: 80
        y: 203
        width: 56
        height: 25
        text: "Update"
        font.pixelSize: 11
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 79
        width: 225
        height: 156
        color: "transparent"
        border.color: "#37b29a"
        radius: 3
    }



}
