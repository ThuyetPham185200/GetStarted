import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Item {
    id: root
    width: 650
    height: 450
    Rectangle {
        id: autofocus
        x: 314
        y: 61
        width: 50
        height: 45
        color: UIConstants.transparentColor
        border.color: UIConstants.genBorderColor

    }
    Rectangle {
        id: zoom
        x: 25
        y: 61
        width: 278
        height: 45
        color: UIConstants.transparentColor
        border.color: UIConstants.genBorderColor

        BalancedSlider {
            id: balancedSlider
            x: 57
            y: 18
            width: 213
            height: 10
        }

        Image {
            id: focus1
            x: 358
            y: 6
            source: "icons/Focus.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: focus_
        x: 375
        y: 61
        width: 267
        height: 45
        color: UIConstants.transparentColor
        border.color: UIConstants.genBorderColor
        BalancedSlider {
            id: balancedSlider1
            x: 51
            y: 18
            width: 209
            height: 10
        }
    }

    Rectangle {
        id: bg
        color: UIConstants.transparentColor
       // border.color: UIConstants.genBorderColor
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 112
        anchors.rightMargin: 25
        anchors.bottomMargin: 25

        StackLayout {
            id: view
            anchors.fill: parent
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 8
            anchors.bottomMargin: 0
            EOConfigShortcut {
            }

            IRConfigShortcut {

            }
        }
    }

    VerticalMenu {
        id: verticalMenu
        x: 25
        y: 13
        Connections {
            target: verticalMenu
            function onSelected(index) {
                view.currentIndex = index
            }
        }
        menuModel: ListModel {
            ListElement {tit: "Ảnh ngày"; checked: true}
            ListElement {tit: "Ảnh nhiệt"; checked: false}
        }
    }

    Image {
        id: aFocus
        x: 322
        y: 61
        source: "icons/AFocus.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: zoom1
        x: 35
        y: 67
        source: "icons/Zoom.svg"
        fillMode: Image.PreserveAspectFit
    }







}
