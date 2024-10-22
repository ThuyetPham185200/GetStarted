import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 300
    color: "#00000000"



    Label {
        id: title_
        x: 301
        width: 98
        height: 13
        anchors.top: parent.top
        anchors.topMargin: 8
        text: "SRHawk Radar"
        color: "#37B29A";  font.family: Constants.font.family
    }

    Frame {
        id: frame
        x: 8
        y: 44
        width: 339
        height: 248

        Text {
            id: _text2
            x: 0
            y: 9
            width: 24
            height: 14
            text: qsTr("IP: ")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        TextField_ {
            id: textField
            x: 20
            y: -4
            width: 103
            height: 40
            text: "192.168.44.1"
            placeholderText: qsTr("Text Field")
            font.family: Constants.font.family
        }

        Text {
            id: _text3
            x: 129
            y: 9
            width: 4
            height: 14
            text: qsTr(":")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        TextField_ {
            id: textField1
            x: 139
            y: -4
            width: 48
            height: 40
            text: "1234"
            placeholderText: qsTr("Text Field")
            font.family: Constants.font.family
        }

        Switch_ {
            id: _switch
            x: 184
            y: -4
            width: 131
            height: 40
            text: qsTr("Connect")
            font.family: Constants.font.family
        }

        Text {
            id: _text4
            x: 0
            y: 42
            width: 77
            height: 14
            text: qsTr("Range mode ")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        ComboBox_ {
            id: comboBox
            x: 2
            y: 62
        }

        Text {
            id: _text5
            x: 164
            y: 42
            width: 77
            height: 14
            text: qsTr("Frequency")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text6
            x: 0
            y: 42
            width: 77
            height: 14
            text: qsTr("Range mode ")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        ComboBox_ {
            id: comboBox1
            x: 164
            y: 62
        }

        Slider_ {
            id: slider
            x: 104
            y: 108
            value: 0.5
        }

        Slider_ {
            id: slider1
            x: 104
            y: 148
            value: 0.5
        }

        Slider_ {
            id: slider2
            x: 104
            y: 184
            value: 0.5
        }

        Text {
            id: _text7
            x: 0
            y: 121
            text: qsTr("Max Az:")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text8
            x: 2
            y: 161
            text: qsTr("Min Az:")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text9
            x: 2
            y: 197
            text: qsTr("Elevation:")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }
    }

    Frame {
        id: frame1
        x: 362
        y: 44
        width: 330
        height: 248

        Frame {
            id: frame3
            x: 0
            y: 154
            width: 306
            height: 70
        }

        Text {
            id: _text10
            x: 8
            y: -7
            text: qsTr("Radar status")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text11
            x: 8
            y: 134
            text: qsTr("BIT Status")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text14
            x: 8
            y: 163
            width: 138
            height: 14
            text: qsTr("Temperature range: Nan")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text15
            x: 8
            y: 199
            width: 138
            height: 14
            text: qsTr("Input Voltage: Nan")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text16
            x: 158
            y: 163
            width: 138
            height: 14
            text: qsTr("GPS Receiver: Nan")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }
    }

    Text {
        id: _text
        x: 16
        y: 24
        text: qsTr("Control")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: _text1
        x: 371
        y: 24
        text: qsTr("Status")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    Frame {
        id: frame2
        x: 371
        y: 68
        width: 306
        height: 116
        Text {
            id: text1
            x: -7
            y: 1
            text: qsTr("Lat:  19.36464")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: text2
            x: 75
            y: 1
            text: qsTr("Lon: 105.784445")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: text3
            x: 178
            y: 1
            width: 22
            height: 14
            text: qsTr("Alt: 21.87355")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: text4
            x: -7
            y: 43
            text: qsTr("Roll: 63.48844")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: text5
            x: 75
            y: 43
            text: qsTr("Pitch: 24.844")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: text6
            x: 178
            y: 43
            text: qsTr("Yaw:  12.48575")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text12
            x: 19
            y: 78
            width: 94
            height: 14
            text: qsTr("Device state: Nan")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }

        Text {
            id: _text13
            x: 132
            y: 78
            width: 94
            height: 14
            text: qsTr("Radar state: Nan")
            font.pixelSize: 12
            color: "#37B29A";  font.family: Constants.font.family
        }
    }
}
