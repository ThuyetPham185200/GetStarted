import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    width: 225
    height: 450
    Rectangle {
        y: 5
        radius: 3
        width: 105
        height: 145
        color: "transparent"
        border.color: "#37b29a"
        Label {
            x: 3
            y: 3
            color: "#37b29a"
            text: "Algorithm"
            font.pixelSize: 12
            font.family: Constants.font.family
        }

        RadioButton_ {
            id: radioButton_
            x: 3
            y: 19
            width: 100
            height: 25
            text: "Threash"
            font.pixelSize: 12
        }

        RadioButton_ {
            id: radioButton_1
            x: 3
            y: 50
            width: 100
            height: 25
            text: "ND 1"
        }

        RadioButton_ {
            id: radioButton_2
            x: 3
            y: 81
            width: 100
            height: 25
            text: "ND2"
        }

        RadioButton_ {
            id: radioButton_3
            x: 3
            y: 112
            width: 100
            height: 25
            text: "SPI"
        }
    }

    Rectangle {
        x: 120
        y: 5
        width: 105
        height: 145
        color: "#00000000"
        radius: 3
        border.color: "#37b29a"
        Label {
            x: 3
            y: 3
            color: "#37b29a"
            text: "Control as"
            font.pixelSize: 12
            font.family: Constants.font.family
        }


        RadioButton_ {
            id: radioButton_4
            x: 3
            y: 19
            width: 100
            height: 25
            text: "EO"
        }

        RadioButton_ {
            id: radioButton_5
            x: 3
            y: 50
            width: 100
            height: 25
            text: "IR"
        }
    }



}
