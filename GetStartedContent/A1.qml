import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 300
    color: "transparent"

    Text {
        id: _text
        x: 103
        y: 41
        text: qsTr("Missle IP: ")
        font.pixelSize: 12
        color: "#37B29A"
        font.family: Constants.font.family
    }

    TextField_ {
        id: textField
        x: 169
        y: 28
        text: "192.168.44.1"
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    Text {
        id: _text1
        x: 409
        y: 41
        text: qsTr("Missle Port: ")
        font.pixelSize: 12
        font.family: Constants.font.family
        color: "#37B29A"
    }

    TextField_ {
        id: textField1
        x: 492
        y: 28
        width: 83
        height: 40
        font.family: Constants.font.family
        text: "8008"
        placeholderText: qsTr("Text Field")
    }

    Button_ {
        id: button
        x: 102
        y: 88
        font.family: Constants.font.family
        text: qsTr("Connect")
    }

    Button_ {
        id: button1
        x: 269
        y: 88
        font.family: Constants.font.family
        text: qsTr("DisConnect")
    }

    Text {
        id: _text2
        x: 419
        y: 101
        text: qsTr("Distance: 0.0 km")
        font.pixelSize: 12
        color: "#37B29A"
        font.family: Constants.font.family
    }

    Button_ {
        id: button2
        x: 102
        y: 178
        text: qsTr("Active Track GPS")
        font.family: Constants.font.family
    }

    Button_ {
        id: button3
        x: 269
        y: 178
        text: qsTr("Deactive Track GPS")
        font.family: Constants.font.family
    }

    Button_ {
        id: button4
        x: 445
        y: 178
        text: qsTr("Go to Missle")
        font.family: Constants.font.family
    }
}
