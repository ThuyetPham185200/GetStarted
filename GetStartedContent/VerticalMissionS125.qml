import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: root
    width: 300
    height: 450

    Label {
        x: 56
        y: 23
        color: "#37b29a"
        text: "192.168.150.92:2233"
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
        source: "icons/export/Misson(2).svg"
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
        x: 98
        y: 70
        width: 119
        height: 26
        text: "Track GPS"
    }

    Button_ {
        id: button_
        x: 211
        y: 71
        width: 81
        height: 25
        text: "Go to Missile"
        font.pixelSize: 11
    }



}
