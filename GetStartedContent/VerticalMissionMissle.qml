import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    width: 225
    height: 450

    Label {
        x: 180
        y: 24
        color: "#37b29a"
        text: "27272"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Label {
        x: 42
        y: 41
        color: "#37b29a"
        text: "5 km"
        font.pixelSize: 12
        font.family: Constants.font.family
    }

    Image {
        id: misson2
        x: 5
        y: 8
        source: "icons/Misson_2.svg"
        fillMode: Image.PreserveAspectFit
    }

    Switch_ {
        id: switch_
        x: 6
        y: 70
        width: 80
        height: 26
        text: "On"
    }

    Switch_ {
        id: switch_1
        x: 80
        y: 70
        width: 119
        height: 26
        text: "Track GPS"
    }

    Button_ {
        id: button_
        x: 6
        y: 108
        width: 81
        height: 25
        visible: false
        text: "Go to Missile"
        font.pixelSize: 11
    }

    ComboBox_ {
        id: comboBox_
        x: 80
        y: 18
        width: 94
        height: 25
    }



}
