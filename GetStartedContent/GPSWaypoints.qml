import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 300
    color: "transparent"



    Label {
        id: title_
        x: 301
        width: 98
        height: 13
        anchors.top: parent.top
        anchors.topMargin: 8
        text: "GPS Waypoints"
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: _text
        x: 116
        y: 54
        text: qsTr("Lat")
        font.pixelSize: 14
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: _text1
        x: 116
        y: 99
        text: qsTr("Lon")
        font.pixelSize: 14
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: _text2
        x: 117
        y: 148
        width: 19
        height: 16
        text: qsTr("Alt")
        font.pixelSize: 14
        color: "#37B29A";  font.family: Constants.font.family
    }

    TextField_ {
        id: textField
        x: 149
        y: 42
        width: 90
        height: 40
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    TextField_ {
        id: textField1
        x: 250
        y: 42
        width: 90
        height: 40
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    TextField_ {
        id: textField2
        x: 354
        y: 42
        width: 90
        height: 40
        placeholderText: qsTr("Text Field")
    }

    TextField_ {
        id: textField3
        x: 149
        y: 88
        width: 90
        height: 40
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    TextField_ {
        id: textField4
        x: 250
        y: 88
        width: 90
        height: 40
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    TextField_ {
        id: textField5
        x: 354
        y: 88
        width: 90
        height: 40
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    TextField_ {
        id: textField6
        x: 149
        y: 136
        width: 90
        height: 40
        placeholderText: qsTr("Text Field")
        font.family: Constants.font.family
    }

    Button_ {
        id: button
        x: 480
        y: 42
        text: qsTr("Goto by value")
        font.family: Constants.font.family
    }

    Button_ {
        id: button1
        x: 480
        y: 224
        text: qsTr("Load waypoints")
        font.family: Constants.font.family
    }
}
