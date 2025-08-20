import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 600
    height: 450

    Rectangle {
        id: mode
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 10
        height: 168
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor
        Label {
            x: 18
            y: 46
            width: 122
            height: 18
            color: "#37b29a"
            text: "Latitude (deg)"
            font.pixelSize: 14
            font.family: UIConstants.customFont
        }


        Label {
            x: 18
            y: 14
            width: 249
            height: 18
            color: "#37b29a"
            text: "Vị trí thiết bị"
            font.pixelSize: 14
            font.family: UIConstants.customFont
        }




        Button_ {
            id: button_2
            x: 452
            y: 80
            width: 85
            height: 30
            text: "Cập nhật"
        }

        Label {
            x: 18
            y: 127
            width: 112
            height: 18
            color: "#37b29a"
            text: "Altitude (deg)"
            font.pixelSize: 14
            font.family: UIConstants.customFont
        }

        Label {
            x: 18
            y: 86
            width: 84
            height: 18
            color: "#37b29a"
            text: "Longtitude (deg)"
            font.pixelSize: 14
            font.family: UIConstants.customFont
        }


        QDTTextField {
            id: qDTTextField4
            x: 218
            y: 38
        }



        QDTTextField {
            id: qDTTextField5
            x: 218
            y: 79
        }

        QDTTextField {
            id: qDTTextField6
            x: 218
            y: 119
        }

    }


    Rectangle {
        id: mode1
        height: 231
        color: UIConstants.transparentColor
        radius: 2
        border.color: UIConstants.genBorderColor
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: mode.bottom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        anchors.topMargin: 6

        Rectangle {
            id: mode2
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 80
            height: 168
            color: UIConstants.transparentColor
            radius: 2
            border.color: UIConstants.genBorderColor
            Label {
                x: 8
                y: 16
                width: 112
                height: 18
                color: "#37b29a"
                text: "Khoảng cách (m)"
                font.pixelSize: 14
                font.family: UIConstants.customFont

            }

            Label {
                x: 147
                y: 16
                width: 84
                height: 18
                color: "#37b29a"
                text: "23.3456"
                font.pixelSize: 14
                font.family: UIConstants.customFont

            }

            Item {
                x: 287
                y: 46
                width: 282
                height: 114
                visible: switch_.checked
                Label {
                    x: 0
                    y: 8
                    width: 122
                    height: 18
                    color: "#37b29a"
                    text: "Latitude (deg)"
                    font.pixelSize: 14
                    font.family: UIConstants.customFont
                }

                Label {
                    x: 0
                    y: 76
                    width: 112
                    height: 18
                    color: "#37b29a"
                    text: "Altitude (deg)"
                    font.pixelSize: 14
                    font.family: UIConstants.customFont
                }

                Label {
                    x: 0
                    y: 40
                    width: 84
                    height: 18
                    color: "#37b29a"
                    text: "Longtitude (deg)"
                    font.pixelSize: 14
                            font.family: UIConstants.customFont

                }

                Label {
                    x: 193
                    y: 8
                    width: 71
                    height: 18
                    color: "#37b29a"
                    text: "23.3456"
                    font.pixelSize: 14
                            font.family: UIConstants.customFont

                }

                Label {
                    x: 193
                    y: 40
                    width: 71
                    height: 18
                    color: "#37b29a"
                    text: "23.3456"
                    font.pixelSize: 14
                            font.family: UIConstants.customFont

                }

                Label {
                    x: 193
                    y: 76
                    width: 71
                    height: 18
                    color: "#37b29a"
                    text: "23.3456"
                    font.pixelSize: 14
                    font.family: UIConstants.customFont

                }
            }

            Label {
                x: 287
                y: 16
                width: 61
                height: 18
                color: "#37b29a"
                text: "Tọa độ"
                font.pixelSize: 14
                font.family: UIConstants.customFont
            }
            QDTSwitch {
                id: switch_
                x: 354
                y: 1
                text: switch_.checked ? "Hiện" : "Ẩn"
            }

        }

        Label {
            x: 8
            y: 56
            width: 122
            height: 18
            color: "#37b29a"
            text: "Thông tin mục tiêu"
            font.pixelSize: 14
                    font.family: UIConstants.customFont

        }

        Label {
            x: 18
            y: 14
            width: 58
            height: 18
            color: "#37b29a"
            text: "Laser đo xa"
            font.pixelSize: 14
            font.family: UIConstants.customFont
        }

        Button_ {
            id: button_3
            x: 147
            y: 8
            width: 85
            height: 30
            text: "Đo xa"
        }



    }
}
