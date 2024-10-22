import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 500
    height: 280
    color: "transparent"

    Text {
        id: text1
        x: 25
        y: 51
        text: qsTr("Lat:  19.36464")
        font.pixelSize: 12
    }

    Text {
        id: text2
        x: 163
        y: 51
        text: qsTr("Lon: 105.784445")
        font.pixelSize: 12
    }

    Text {
        id: text3
        x: 324
        y: 51
        text: qsTr("Alt: ")
        font.pixelSize: 12
    }

    TextField {
        id: textField
        x: 352
        y: 38
        width: 102
        height: 40
        text: "0.00"
        placeholderText: qsTr("Text Field")
    }

    TextField {
        id: textField1
        x: 52
        y: 120
        width: 103
        height: 40
        text: "0.00"
        placeholderText: qsTr("Text Field")
    }

    Text {
        id: text4
        x: 25
        y: 133
        text: qsTr("Roll:")
        font.pixelSize: 12
    }

    Text {
        id: text5
        x: 163
        y: 133
        text: qsTr("Pitch:")
        font.pixelSize: 12
    }

    TextField {
        id: textField2
        x: 199
        y: 120
        width: 103
        height: 40
        text: "0.00"
        placeholderText: qsTr("Text Field")
    }

    Text {
        id: text6
        x: 317
        y: 133
        text: qsTr("Yaw: ")
        font.pixelSize: 12
    }

    TextField {
        id: textField3
        x: 351
        y: 120
        width: 103
        height: 40
        text: "0.00"
        placeholderText: qsTr("Text Field")
    }

    Button {
        id: button
        x: 194
        y: 205
        text: qsTr("Update")
    }
}
