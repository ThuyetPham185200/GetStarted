import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    width: 500
    height: 280
    color: "transparent"

    RadioButton_ {
        id: radioButton
        x: 27
        y: 14
        text: qsTr("Off")
        font.family: Constants.font.family

    }

    RadioButton_ {
        id: radioButton1
        x: 94
        y: 14
        text: qsTr("Manual")
        font.family: Constants.font.family
    }

    Slider_ {
        id: slider
        x: 27
        y: 88
        value: 0.5
    }

    Label {
        id: label
        x: 38
        y: 65
        text: qsTr("Malual value: 0")
        color: "#37B29A"
        font.family: Constants.font.family
    }

    Label {
        id: label1
        x: 38
        y: 156
        text: qsTr("Command Status: Ok")
        color: "#37B29A"
        font.family: Constants.font.family
    }

    RadioButton_ {
        id: radioButton2
        x: 251
        y: 14
        text: qsTr("Clear")
        font.family: Constants.font.family
    }

    RadioButton_ {
        id: radioButton3
        x: 251
        y: 60
        text: qsTr("ND 1")
        font.family: Constants.font.family
    }

    RadioButton_ {
        id: radioButton4
        x: 251
        y: 106
        text: qsTr("ND 2")
        font.family: Constants.font.family
    }

    Button_ {
        id: button
        x: 353
        y: 19
        text: qsTr("EO Cam. Reset")
        font.family: Constants.font.family
    }
}
