import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 300
    color: "transparent"

    Frame {
        id: frame
        x: 22
        y: 34
        width: 314
        height: 258

        Text {
            id: _text2
            x: -6
            y: 5
            text: qsTr("Name: ")
            font.pixelSize: 12
            font.family: Constants.font.family
            color: "#37B29A"
        }

        ComboBox_ {
            id: comboBox
            x: 38
            y: -8
            width: 72
            height: 40
            font.family: Constants.font.family

        }

        Text {
            id: _text3
            x: 120
            y: 5
            text: qsTr("IP: ")
            font.pixelSize: 12
            color: "#37B29A"
            font.family: Constants.font.family
        }

        TextField_ {
            id: textField
            x: 142
            y: -8
            width: 88
            height: 40
            text: "192.0.44.5"
            placeholderText: qsTr("Text Field")
            font.family: Constants.font.family
        }

        Text {
            id: _text4
            x: 236
            y: 5
            text: qsTr(":")
            font.pixelSize: 12
            font.family: Constants.font.family
            color: "#37B29A"
        }

        TextField_ {
            id: textField1
            x: 245
            y: -8
            width: 52
            height: 40
            text: "1122"
            font.family: Constants.font.family
            placeholderText: qsTr("Text Field")
        }

        Button_ {
            id: button
            x: -6
            y: 74
            font.family: Constants.font.family
            text: qsTr("Connect")
        }

        Button_ {
            id: button1
            x: 105
            y: 74
            font.family: Constants.font.family
            text: qsTr("Disconnect")
        }

        Switch_ {
            id: _switch
            x: 200
            y: 74
            text: qsTr("Off")
        }

        Button_ {
            id: button2
            x: 0
            y: 134
            text: qsTr("Active Track GPS")
        }

        Button_ {
            id: button3
            x: 144
            y: 134
            text: qsTr("Deactive Track GPS")
        }

        Button_ {
            id: button4
            x: 0
            y: 187
            text: qsTr("Go to Target")
        }
    }

    Text {
        id: _text
        x: 27
        y: 14
        text: qsTr("UAV")
        font.pixelSize: 12
        color: "#37B29A"
    }

    Frame {
        id: frame1
        x: 360
        y: 34
        width: 321
        height: 258

        Button_ {
            id: button5
            x: -5
            y: 46
            width: 84
            height: 40
            text: qsTr("Connect")
        }

        Text {
            id: _text5
            x: 3
            y: 13
            text: qsTr("IP: ")
            font.pixelSize: 12
            color: "#37B29A"
        }

        TextField_ {
            id: textField2
            x: 25
            y: 0
            width: 88
            height: 40
            text: "127.0.0.1"
            placeholderText: qsTr("Text Field")
        }

        Text {
            id: _text6
            x: 119
            y: 13
            text: qsTr(":")
            font.pixelSize: 12
            color: "#37B29A"
        }

        TextField_ {
            id: textField3
            x: 128
            y: 0
            width: 52
            height: 40
            text: "2244"
            placeholderText: qsTr("Text Field")
        }

        Button_ {
            id: button6
            x: 85
            y: 46
            width: 100
            height: 40
            text: qsTr("Disconnect")
        }

        Button_ {
            id: button7
            x: 191
            y: 46
            text: qsTr("Goto Target")
        }

        Frame {
            id: frame2
            x: 3
            y: 111
            width: 294
            height: 94

            Text {
                id: text1
                x: -7
                y: 1
                text: qsTr("Lat:  19.36464")
                font.pixelSize: 12
                color: "#37B29A"
            }

            Text {
                id: text2
                x: 75
                y: 1
                text: qsTr("Lon: 105.784445")
                font.pixelSize: 12
                color: "#37B29A"
            }

            Text {
                id: text3
                x: 178
                y: 1
                width: 22
                height: 14
                text: qsTr("Alt: ")
                font.pixelSize: 12
                color: "#37B29A"
            }

            TextField_ {
                id: textField4
                x: 206
                y: -7
                width: 54
                height: 31
                text: "0.00"
                placeholderText: qsTr("Text Field")
            }

            TextField_ {
                id: textField5
                x: 19
                y: 30
                width: 50
                height: 40
                text: "0.00"
                placeholderText: qsTr("Text Field")
            }

            Text {
                id: text4
                x: -7
                y: 43
                text: qsTr("Roll:")
                font.pixelSize: 12
                color: "#37B29A"
            }

            Text {
                id: text5
                x: 75
                y: 43
                text: qsTr("Pitch:")
                font.pixelSize: 12
                color: "#37B29A"
            }

            TextField_ {
                id: textField6
                x: 109
                y: 30
                width: 56
                height: 40
                text: "0.00"
                placeholderText: qsTr("Text Field")
            }

            Text {
                id: text6
                x: 178
                y: 43
                text: qsTr("Yaw: ")
                font.pixelSize: 12
                color: "#37B29A"
            }

            TextField_ {
                id: textField7
                x: 212
                y: 30
                width: 44
                height: 40
                text: "0.00"
                placeholderText: qsTr("Text Field")
            }
        }

        Text {
            id: _text7
            x: 10
            y: 92
            text: qsTr("Radar state")
            font.pixelSize: 12
            color: "#37B29A"
        }

        Button_ {
            id: button8
            x: 53
            y: 211
            width: 191
            height: 30
            text: qsTr("Update Tracker Locaiton")
        }
    }

    Text {
        id: _text1
        x: 368
        y: 14
        text: qsTr("Radar VTX")
        font.pixelSize: 12
        color: "#37B29A"
    }
}
