import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    width: 225
    height: 450

    Image {
        id: uAV
        x: 5
        y: 0
        source: "icons/UAV.svg"
        fillMode: Image.PreserveAspectFit
    }

    ComboBox_ {
    id: comboBox_
    x: 46
    y: 10
    width: 94
    height: 25
    }
    Label {
        x: 148
        y: 16
        color: "#37b29a"
        text: "2233"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Switch_ {
        id: switch_
        x: 5
        y: 77
        width: 114
        height: 25
        text: "Connect"
    }

    Switch_ {
        id: switch_1
        x: 5
        y: 118
        width: 122
        height: 25
        text: "On"
    }

    Switch_ {
        id: switch_2
        x: 115
        y: 77
        width: 122
        height: 25
        text: "Track GPS"
    }

    Button_ {
        id: button_
        x: 115
        y: 118
        width: 81
        height: 25
        text: "Go to Target"
        font.pixelSize: 11
    }
}
