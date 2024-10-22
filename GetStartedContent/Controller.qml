import QtQuick 2.15
import QtQuick.Controls 2.15
import  QtQuick.Studio.Components 1.0
import QtQuick.Studio.DesignEffects
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 350
    color: "transparent"

    Label {
        x: 296
        y: 15
        text: "Controller"
        color: "#37B29A"
        font.family: Constants.font.family
    }
    Frame {
        id: frame
        x: 383
        y: 75
        width: 200
        height: 200

        RadioButton_ {
            id: radioButton
            x: 14
            y: 23
            font.family: Constants.font.family
            text: qsTr("Zoom")
        }

        RadioButton_ {
            id: radioButton1
            x: 14
            y: 112
            font.family: Constants.font.family
            text: qsTr("Focus")
        }
    }

    Text {
        id: _text
        x: 383
        y: 55
        text: qsTr("Z-axis")
        font.pixelSize: 12
        font.family: Constants.font.family
        color: "#37B29A"
    }

    Frame {
        id: frame1
        x: 88
        y: 75
        width: 200
        height: 200

        VirtualJoystick {
            id: virtualJoystick
            x: 13
            y: 13
            width: 150
            height: width
        }
    }

}
