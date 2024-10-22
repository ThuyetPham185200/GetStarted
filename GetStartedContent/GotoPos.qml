import QtQuick
import QtQuick.Controls
import GetStarted

Rectangle {
    id: root
    width: 300
    height: 120
    color: "transparent"
    border.color: "#37B29A";
    Text {
        id: _text3
        x: 143
        y: 8
        text: qsTr("Az")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    TextField_ {
        id: textField
        x: 116
        y: 62
        width: 69
        height: 40
        text: "23.6464"
        placeholderText: qsTr("Text Field")
    }

    Text {
        id: _text4
        x: 248
        y: 8
        width: 18
        height: 14
        text: qsTr("El")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    TextField_ {
        id: textField1
        x: 222
        y: 62
        width: 70
        height: 40
        text: "34.255"
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    Button_ {
        id: button_
        x: 8
        y: 62
        width: 72
        height: 40
        text: "Goto"
        font.family: Constants.font.family
    }

    Text {
        id: _text5
        x: 126
        y: 33
        color: "#37b29a"
        text: qsTr("23.6464")
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Text {
        id: _text6
        x: 232
        y: 33
        color: "#37b29a"
        text: qsTr("34.255")
        font.pixelSize: 12
        font.family: Constants.font.family
    }
}
