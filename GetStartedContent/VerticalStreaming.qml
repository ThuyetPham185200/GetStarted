import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    x: 83
    y: 7
    width: 225
    height: 450


    Rectangle {
        y: 5
        anchors.left: parent.left
        anchors.right: parent.right
        height: 92
        border.width: 1
        border.color: "#37b29a"
        color: "transparent"
        radius: 3
        Label {
            x: 5
            y: 11
            color: "#37b29a"
            text: "Stream"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 123
            y: 11
            color: "#37b29a"
            text: "192.168.150.92"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Button_ {
            id: button_
            x: 5
            y: 40
            width: 62
            height: 25
            text: "IRStream"
            font.pixelSize: 11
        }

        Label {
            x: 73
            y: 46
            color: "#37b29a"
            text: "7754"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Button_ {
            id: button_1
            x: 123
            y: 40
            width: 62
            height: 25
            text: "IRStream"
            font.pixelSize: 11
        }

        Label {
            x: 190
            y: 46
            color: "#37b29a"
            text: "8554"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 5
            y: 75
            color: "#37b29a"
            text: "Add text:"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 60
            y: 75
            color: "#37b29a"
            text: "Nui Rong"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        ComboBox_ {
            id: comboBox_
            x: 51
            y: 5
            width: 68
            height: 25
        }
    }


    Rectangle {
        y: 103
        height: 92
        color: "#00000000"
        radius: 3
        border.color: "#37b29a"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        Label {
            x: 5
            y: 11
            color: "#37b29a"
            text: "Forward"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 124
            y: 11
            color: "#37b29a"
            text: "192.168.150.111"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 59
            y: 65
            color: "#37b29a"
            text: "7754"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 189
            y: 65
            color: "#37b29a"
            text: "8554"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 5
            y: 40
            color: "#37b29a"
            text: "IRForward"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 134
            y: 40
            color: "#37b29a"
            text: "EOForward"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Switch_ {
            id: switch_
            x: 5
            y: 57
            width: 51
            height: 26
        }

        ComboBox_ {
            id: comboBox_1
            x: 52
            y: 5
            width: 68
            height: 25
        }

        Switch_ {
            id: switch_1
            x: 134
            y: 57
            width: 51
            height: 26
        }
    }

    Rectangle {
        y: 200
        height: 92
        color: "#00000000"
        radius: 3
        border.color: "#37b29a"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        Label {
            x: 5
            y: 11
            color: "#37b29a"
            text: "Live"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 124
            y: 11
            color: "#37b29a"
            text: "192.168.150.111"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 59
            y: 65
            color: "#37b29a"
            text: "7754"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 189
            y: 65
            color: "#37b29a"
            text: "8554"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 5
            y: 40
            color: "#37b29a"
            text: "IRLive"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 134
            y: 40
            color: "#37b29a"
            text: "EOLive"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Switch_ {
            id: switch_2
            x: 5
            y: 57
            width: 51
            height: 26
        }

        ComboBox_ {
            id: comboBox_2
            x: 52
            y: 5
            width: 68
            height: 25
        }

        Switch_ {
            id: switch_3
            x: 134
            y: 57
            width: 51
            height: 26
        }
    }

    Rectangle {
        y: 297
        height: 92
        color: "#00000000"
        radius: 3
        border.color: "#37b29a"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        Label {
            x: 5
            y: 11
            color: "#37b29a"
            text: "Saving"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 54
            y: 11
            color: "#37b29a"
            text: "home/docs/videos"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 5
            y: 40
            color: "#37b29a"
            text: "IRSaving"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Label {
            x: 134
            y: 40
            color: "#37b29a"
            text: "EOSaving"
            font.pixelSize: 11
            font.family: Constants.font.family
        }

        Switch_ {
            id: switch_4
            x: 5
            y: 57
            width: 51
            height: 26
        }

        Switch_ {
            id: switch_5
            x: 134
            y: 57
            width: 51
            height: 26
        }
    }


}
