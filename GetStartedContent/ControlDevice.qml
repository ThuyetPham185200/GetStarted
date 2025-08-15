import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

ApplicationWindow {
    id: root
    title: "Thiết bị"
    width: 1000
    height: 800

    Rectangle {
        id: bg
        anchors.fill: parent
        color: "#1F2125"
        Rectangle {
            id: camera
            x: 28
            y: 27
            width: 943
            height: 435
            color: UIConstants.transparentColor
            border.color: UIConstants.genBorderColor
            VerticalMenu {
                id: verticalMenu
                x: 8
                y: 8
                menuModel: ListModel {
                    ListElement {
                        tit: "Ảnh ngày"
                        checked: true
                    }

                    ListElement {
                        tit: "Ảnh nhiệt"
                        checked: false
                    }
                }
                Connections {
                    target: verticalMenu
                    function onSelected(inx) {
                        view.currentIndex = inx
                    }
                }
            }

            Rectangle {
                id: autofocus
                x: 422
                y: 55
                width: 50
                height: 45
                color: UIConstants.transparentColor
                border.color: UIConstants.genBorderColor
            }

            Rectangle {
                id: zoom
                x: 8
                y: 55
                width: 402
                height: 45
                color: UIConstants.transparentColor
                border.color: UIConstants.genBorderColor
                BalancedSlider {
                    id: balancedSlider
                    x: 57
                    y: 16
                    width: 337
                    height: 12
                }

                Image {
                    id: focus1
                    x: 483
                    y: 5
                    source: "icons/Focus.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: focus_
                x: 483
                y: 55
                width: 452
                height: 45
                color: UIConstants.transparentColor
                border.color: UIConstants.genBorderColor
                BalancedSlider {
                    id: balancedSlider1
                    x: 52
                    y: 17
                    width: 390
                    height: 12
                }
            }

            Image {
                id: aFocus
                x: 430
                y: 55
                source: "icons/AFocus.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: zoom1
                x: 16
                y: 61
                source: "icons/Zoom.svg"
                fillMode: Image.PreserveAspectFit
            }


            StackLayout {
                id: view
                anchors.top: zoom1.bottom
                anchors.topMargin: 25
                anchors.bottomMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 25
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.rightMargin: 25

                ControlEOCameraDevice {
                }

                ControlIRCameraDevice {
                }
            }
        }

        Rectangle {
            id: gimbal
            x: 28
            y: 474
            width: 351
            height: 296
            color: UIConstants.transparentColor
            border.color: UIConstants.genBorderColor
            Rectangle {
            id: __multi__selection__

            Label {
            x: 8
            y: 148
            width: 318
            height: 22
            color: "#37b29a"
            text: "Đặt giá trị vận tốc lớn nhất cho Pan, Tilt"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Label {
            x: 8
            y: 8
            width: 213
            height: 18
            color: "#37b29a"
            text: "Đi tới vị trí Azimuth, Elevation"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Label {
            x: 8
            y: 32
            width: 67
            height: 18
            color: "#37b29a"
            text: "Azimuth"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Label {
            x: 8
            y: 66
            width: 67
            height: 18
            color: "#37b29a"
            text: "Elevation"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            QDTTextField {
            id: qDTTextField
            x: 138
            y: 35
            width: 134
            height: 15
            }

            QDTTextField {
            id: qDTTextField1
            x: 138
            y: 68
            width: 134
            height: 15
            }

            Label {
            x: 289
            y: 32
            width: 38
            height: 18
            color: "#37b29a"
            text: "deg"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Label {
            x: 289
            y: 66
            width: 40
            height: 18
            color: "#37b29a"
            text: "deg"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Button_ {
            id: button_
            x: 80
            y: 97
            width: 70
            height: 30
            text: "Đi tới"
            }

            Label {
            x: 8
            y: 183
            width: 131
            height: 18
            color: "#37b29a"
            text: "Vận tốc Pan tối đa"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Label {
            x: 8
            y: 217
            width: 125
            height: 18
            color: "#37b29a"
            text: "Vận tốc Tilt tối đa"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            QDTTextField {
            id: qDTTextField2
            x: 145
            y: 207
            width: 120
            height: 25
            }

            QDTTextField {
            id: qDTTextField3
            x: 145
            y: 173
            width: 120
            height: 28
            }

            Label {
            x: 289
            y: 183
            width: 63
            height: 18
            color: "#37b29a"
            text: "deg/s"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Label {
            x: 289
            y: 217
            width: 63
            height: 18
            color: "#37b29a"
            text: "deg/s"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Button_ {
            id: button_2
            x: 117
            y: 251
            width: 85
            height: 30
            text: "Cập nhật"
            }

            Label {
            x: 91
            y: 32
            width: 48
            height: 18
            color: "#37b29a"
            text: "0.00"
            font.pixelSize: 14
            font.family: Constants.font.family
            }

            Label {
            x: 91
            y: 66
            width: 48
            height: 18
            color: "#37b29a"
            text: "0.00"
            font.pixelSize: 14
            font.family: Constants.font.family
            }
            Button_ {
                id: button_1
                x: 190
                y: 97
                width: 106
                height: 30
                text: "Đừng tất cả"
            }
            }
        }

        Rectangle {
            id: laser
            x: 393
            y: 474
            width: 436
            height: 296
            color: UIConstants.transparentColor
            border.color: UIConstants.genBorderColor

            Image {
                id: streamConfig
                x: 8
                y: 0
                width: 420
                height: 186
                source: "images/streamConfig.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: extend_
            x: 843
            y: 474
            width: 128
            height: 296
            color: UIConstants.transparentColor
            border.color: UIConstants.genBorderColor

            Image {
                id: otherConfig
                x: 10
                y: 8
                source: "images/otherConfig.png"
                fillMode: Image.PreserveAspectFit
            }
        }


    }

}
