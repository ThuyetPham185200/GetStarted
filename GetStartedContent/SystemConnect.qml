import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    width: 500
    height: 280
    color: "transparent"

    TextField_ {
        id: textField1
        x: 56
        y: 8
        width: 103
        height: 40
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    Text {
        id: text4
        x: 33
        y: 21
        width: 22
        height: 14
        text: qsTr("IP")
        font.pixelSize: 12
        font.family: Constants.font.family
        color: "#37B29A"
    }

    Text {
        id: text5
        x: 165
        y: 21
        width: 5
        height: 14
        text: qsTr(":")
        font.pixelSize: 12
        color: "#37B29A"
        font.family: Constants.font.family
    }

    TextField_ {
        id: textField2
        x: 176
        y: 8
        width: 103
        height: 40
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    Button_ {
        id: button
        x: 56
        y: 64
        text: qsTr("Connect")
    }

    Button_ {
        id: button1
        x: 176
        y: 64
        text: qsTr("Disconnect")
        font.family: Constants.font.family
    }

    Button_ {
        id: button2
        x: 300
        y: 8
        text: qsTr("IR Stream")
        font.family: Constants.font.family
    }

    Button_ {
        id: button3
        x: 300
        y: 64
        text: qsTr("EO Stream")
        font.family: Constants.font.family
    }

    Button_ {
        id: button4
        x: 417
        y: 8
        width: 57
        height: 40
        text: qsTr("IR")
    }

    Button_ {
        id: button5
        x: 417
        y: 64
        width: 57
        height: 40
        text: qsTr("EO")
        font.family: Constants.font.family
    }
}
