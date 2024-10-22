import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 300
    color: "transparent"
    property alias title: title_.text


    Label {
        id: title_
        x: 316
        width: 56
        height: 13
        anchors.top: parent.top
        anchors.topMargin: 8
        text: "Calibration"
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: text1
        x: 58
        y: 206
        text: qsTr("Lat:  19.36464")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: text2
        x: 196
        y: 206
        text: qsTr("Lon: 105.784445")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: text3
        x: 357
        y: 206
        text: qsTr("Alt: ")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    TextField_ {
        id: textField
        x: 385
        y: 193
        width: 102
        height: 40
        text: "0.00"
        placeholderText: qsTr("Text Field")
         font.family: Constants.font.family
    }

    TextField_ {
        id: textField1
        x: 85
        y: 239
        width: 103
        height: 40
        text: "0.00"
        placeholderText: qsTr("Text Field")
         font.family: Constants.font.family
    }

    Text {
        id: text4
        x: 58
        y: 252
        text: qsTr("Roll:")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: text5
        x: 196
        y: 252
        text: qsTr("Pitch:")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    TextField_ {
        id: textField2
        x: 232
        y: 239
        width: 103
        height: 40
        text: "0.00"
        placeholderText: qsTr("Text Field")
         font.family: Constants.font.family
    }

    Text {
        id: text6
        x: 350
        y: 252
        text: qsTr("Yaw: ")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    TextField_ {
        id: textField3
        x: 384
        y: 239
        width: 103
        height: 40
        text: "0.00"
        placeholderText: qsTr("Text Field")
         font.family: Constants.font.family
    }

    Button_ {
        id: button
        x: 542
        y: 216
        text: qsTr("Update")
         font.family: Constants.font.family
    }
}
