import QtQuick
import QtQuick.Controls
import GetStarted

Rectangle {
    id: root
    width: 200
    height: 50
    color: "transparent"
    border.color: "#37B29A";
    Text {
        id: _text
        x: 8
        y: 8
        width: 63
        height: 15
        text: qsTr("EO Focus  0")
        font.pixelSize: 14
         color: "#37B29A"
         font.family: Constants.font.family
    }
    Text {
        id: _text1
        x: 8
        y: 29
        width: 63
        height: 15
        text: qsTr("EO FOV     0")
        font.pixelSize: 14
        color: "#37B29A"
        font.family: Constants.font.family
    }

    Text {
        id: _text2
        x: 109
        y: 8
        width: 63
        height: 15
        text: qsTr("IR Focus  0")
        font.pixelSize: 14
        color: "#37B29A"
        font.family: Constants.font.family
    }

    Text {
        id: _text3
        x: 109
        y: 29
        width: 76
        height: 15
        text: qsTr("IR FOV     0")
        font.pixelSize: 14
        color: "#37B29A"
        font.family: Constants.font.family
    }
}
