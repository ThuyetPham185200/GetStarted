import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    x: 83
    y: 7
    width: 225
    height: 450

    Switch_ {
        id: switch_
        x: 1
        y: 0
        width: 122
        height: 34
        text: "Manual"
    }

    Button_ {
        id: button_
        x: 103
        y: 5
        width: 122
        height: 23
        text: "Reset Camera"
    }

    Label {
        x: 0
        y: 53
        font.pixelSize: 16
        text: "MANUAL VALUE"
        font.family: Constants.font.family
        color: "#37B29A"
    }

    VerticalDial {
        id: verticalDial
        x: 23
        y: 78


        Label {
            x: 32
            y: 35
            font.pixelSize: 26
            font.weight: Font.Medium
            text: "30"
            font.family: Constants.font.family
            color: "#37B29A"
        }
    }

    Rectangle {
        x: 0
        y: 200
        color: "transparent"
        border.color:"#37B29A"
        width: 105
        height: 134
        RadioButton_ {
            id: radioButton_
            x: 11
            y: 25
            width: 85
            height: 26
            text: "Clear"
        }

        RadioButton_ {
            id: radioButton_1
            x: 11
            y: 55
            width: 85
            height: 26
            text: "ND 1"
        }

        RadioButton_ {
            id: radioButton_2
            x: 11
            y: 85
            width: 85
            height: 26
            text: "ND 2"
        }
    }






}
