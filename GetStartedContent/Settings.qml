import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 300
    color: "transparent"
    property alias title: title_.text

    ListModel {
        id: listConfig
        ListElement {_title: "EO configuration"; _icon: "images/circle.png"; choose_: true}
        ListElement {_title: "IR configuration"; _icon: "images/circle.png"; choose_: false}
        ListElement {_title: "Track Algorithm"; _icon: "images/circle.png"; choose_: false}
        ListElement {_title: "System Connect"; _icon: "images/circle.png"; choose_: false}
        ListElement {_title: "Joystick"; _icon: "circle.png"; choose_: false}
    }


    Label {
        id: title_
        x: 316
        width: 56
        height: 13
        anchors.top: parent.top
        anchors.topMargin: 8
        text: "Settings"
        color: "#37B29A"
        font.family: Constants.font.family
    }
    ListView {
        id: viewConfig
        model: listConfig
        anchors.left: parent.left
        anchors.top: title_.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 12
        width: 172
        clip: true
        delegate: RectangleButton {
            title: _title
            iconSrc: _icon
            choose: choose_
            onSelected:  {
                for(var i = 0; i < listConfig.count; i++) {
                    listConfig.setProperty(i, "choose_", false)
                }

                listConfig.setProperty(index, "choose_", true)
                content.currentIndex = index
            }
        }
    }

    Rectangle {
        anchors.left: viewConfig.right
        anchors.right: parent.right
        anchors.top: title_.bottom
        anchors.bottom: parent.bottom
        anchors.rightMargin: 3
        anchors.bottomMargin: 3
        anchors.topMargin: 12
        color: "transparent"
        radius: 2
        border.color:  "#37B29A"
         StackLayout {
            id: content
            anchors.fill: parent
            EOConfiguration {}
            IRConfiguration {}
            TrackAlgorithm {}
            SystemConnect {}
            Joystick {}
        }
    }
}
