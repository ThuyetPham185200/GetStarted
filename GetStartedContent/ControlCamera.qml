import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Item {
    id: root
    width: 650
    height: 450

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: verticalMenu.bottom
        anchors.topMargin: 5
        anchors.bottom: bg.top
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        anchors.bottomMargin: 5
        color: UIConstants.transparentColor
        border.color: UIConstants.genBorderColor
        radius: 3
        Label {
            x: 150
            y: 15
            width: 41
            height: 18
            color: "#37b29a"
            text: "Zoom"
            font.pixelSize: 14
                    font.family: UIConstants.customFont

        }

        Label {
            x: 495
            y: 15
            width: 40
            height: 18
            color: "#37b29a"
            text: "Focus"
            font.pixelSize: 14
                    font.family: UIConstants.customFont

        }


        Label {
            x: 290
            y: 15
            width: 70
            height: 18
            color: "#37b29a"
            text: "AutoFocus"
            font.pixelSize: 14
                    font.family: UIConstants.customFont

        }
        Rectangle {
            id: autofocus
            x: 300
            y: 39
            width: 50
            height: 45
            color: UIConstants.transparentColor
            border.color: UIConstants.genBorderColor

        }
        Rectangle {
            id: zoom
            x: 8
            y: 39
            width: 278
            height: 45
            color: UIConstants.transparentColor
            border.color: UIConstants.genBorderColor

            BalancedSlider {
                id: balancedSlider
                x: 55
                y: 18
                width: 213
                height: 10
            }

            Image {
                id: focus1
                x: 357
                y: 6
                source: "icons/Focus.svg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: focus_
            x: 359
            y: 39
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


        Image {
            id: aFocus
            x: 308
            y: 39
            source: "icons/AFocus.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: zoom1
            x: 14
            y: 42
            source: "icons/Zoom.svg"
            fillMode: Image.PreserveAspectFit
        }

    }



    Rectangle {
        id: bg
        color: UIConstants.transparentColor
        border.color: UIConstants.genBorderColor
        radius: 3
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 129
        anchors.bottomMargin: 8

        StackLayout {
            id: view
            anchors.fill: parent
            anchors.leftMargin: 0
            anchors.rightMargin: 14
            anchors.topMargin: 0
            anchors.bottomMargin: 8
            EOConfigShortcut {
            }

            IRConfigShortcut {

            }
        }
    }

    VerticalMenu {
        id: verticalMenu
        x: 0
        y: 0
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


}
