import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    width: 225
    height: 450

    Label {
        x: 5
        y: 5
        color: "#37b29a"
        text: "Multi-Lrss"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    ComboBox_ {
        id: comboBox_
        x: 5
        y: 20
        width: 68
        height: 25
    }

    Switch_ {
        id: switch_
        x: 117
        y: 20
        width: 102
        height: 26
        text: "Enable"
    }

    Label {
        x: 5
        y: 61
        color: "#37b29a"
        text: "192.168.150.13:4433"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Button_ {
        id: button_
        x: 143
        y: 56
        width: 51
        height: 25
        text: "Save"
        font.pixelSize: 11
    }



}
