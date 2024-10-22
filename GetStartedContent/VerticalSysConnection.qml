import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    x: 83
    y: 7
    width: 225
    height: 450

    Label {
        x: 0
        y: 10
        color: "#37b29a"
        text: "NightHawk"
        font.pixelSize: 11
        font.family: Constants.font.family
    }

    ComboBox_ {
        id: comboBox_
        x: 0
        y: 25
        width: 110
        height: 25
    }

    Label {
        x: 0
        y: 68
        color: "#37b29a"
        text: "192.168.150.92:2233"
        font.pixelSize: 11
        font.family: Constants.font.family
    }

    Switch_ {
        id: switch_
        x: 131
        y: 62
        width: 86
        height: 26
        text: "On"
    }
}
