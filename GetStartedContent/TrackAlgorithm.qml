import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    width: 500
    height: 280
    color: "transparent"

    ComboBox_ {
        id: comboBox
        x: 92
        y: 38
        font.family: Constants.font.family
    }

    ComboBox_ {
        id: comboBox1
        x: 339
        y: 38
        font.family: Constants.font.family
    }

    Text {
        id: text1
        x: 25
        y: 51
        text: qsTr("Algorithm")
        font.pixelSize: 12
        font.family: Constants.font.family
        color: "#37B29A"
    }

    Text {
        id: text2
        x: 278
        y: 51
        text: qsTr("Control as")
        font.pixelSize: 12
        font.family: Constants.font.family
        color: "#37B29A"
    }
}
