import QtQuick
import QtQuick.Controls
import GetStarted

Item {
    id: root
    width: 500
    height: 50
    signal gotoSelect()

    HiddenButton {
        id: rectangleButton
        x: 13
        y: 12
        width: 134
        height: 30
        name: "Az  0.0    EL  0.0"
        onSelect: gotoSelect()
    }

    Text {
        id: _text
        x: 153
        y: 18
        width: 63
        height: 15
        text: qsTr("EO Focus  0")
        font.pixelSize: 14
         color: "#37B29A"
         font.family: Constants.font.family
    }

    Text {
        id: _text1
        x: 250
        y: 18
        width: 63
        height: 15
        text: qsTr("EO FOV  0")
        font.pixelSize: 14
        color: "#37B29A"
        font.family: Constants.font.family
    }

    Text {
        id: _text2
        x: 332
        y: 18
        width: 63
        height: 15
        text: qsTr("IR Focus  0")
        font.pixelSize: 14
        color: "#37B29A"
        font.family: Constants.font.family
    }

    Text {
        id: _text3
        x: 429
        y: 18
        width: 63
        height: 15
        text: qsTr("IR FOV  0")
        font.pixelSize: 14
        color: "#37B29A"
        font.family: Constants.font.family
    }
}
