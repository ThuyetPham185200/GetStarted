import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
import QtQuick.Layouts

Item {
    id: root
    height: 500
    width: 350
    Rectangle {
        id: bg
        z: root.z - 1
        border.color: "#37B293"
        color: "#2B2D2F"
        radius: 3
        opacity: 0.9
        anchors.fill: parent
    }
    property alias currentIndex: contentSettings.currentIndex

    Label {
        x: 150
        y: 5
        z: root.z + 1
        horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
        verticalAlignment: Text.AlignVCenter    // Vertically align text in the center
        font.family: Constants.font.family
        text: "Settings"
        color: "#37B293"
    }

    RectBorder {
        id: rectBorder
        x: 25
        y: 25
        z: root.z + 1
        length: 300
        color: "#37B293"
    }

    ListModel {
        id: listFeatures
        ListElement {name: "System Connect"; icon_: "icons/export/Sys connect.svg"; choose_: true}
        ListElement {name: "Streaming"; icon_: "icons/export/Streaming.svg"; choose_: false}
        ListElement {name: "EO"; icon_: "icons/export/EO.svg"; choose_: false}
        ListElement {name: "IR"; icon_: "icons/export/IR.svg"; choose_: false}
        ListElement {name: "Track Algorithm"; icon_: "icons/export/Track.svg"; choose_: false}
        ListElement {name: "Multi-lrss"; icon_: "icons/export/multi_lrss.svg"; choose_: false}
    }


    Column {
        z: root.z + 1
        anchors.left: parent.left
        anchors.leftMargin: 25
        anchors.bottom: parent.bottom
        anchors.top: rectBorder.bottom
        anchors.topMargin: 5
        width: 50
        spacing: 5

        Repeater {
            model: listFeatures
            anchors.fill: parent
            delegate: VerticalIcon {
                bgVisile: choose_
                iconSrc: icon_
                title: name
                onSelected: {
                    for(var i = 0; i < listFeatures.count; i++) {
                        listFeatures.setProperty(i, "choose_", false)
                    }

                    listFeatures.setProperty(index, "choose_", true)
                    contentSettings.currentIndex = index
                }
            }
        }
    }

    StackLayout {
        id: contentSettings
        z: root.z + 1
        x: 100
        y: 25
        VerticalSysConnection {}
        VerticalStreaming {}
        VerticalEOSetting {}
        VerticalIRSetting {}
        VerticalTrackSetting{}
        VerticalMultiLrss{}
    }

}
