import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 600
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 5
    //height: 450
    Rectangle {
        id: bg
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 5
        //anchors.bottom: bg.top
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        //anchors.bottomMargin: 5
        height: 153
        color: UIConstants.transparentColor
        //border.color: UIConstants.genBorderColor
        radius: 3

        Button_ {
        id: button_2
        x: 14
        y: 112
        width: 110
        height: 30
        text: "Autofocus"
        }

        Label {
            x: 13
            y: 10
            width: 41
            height: 18
            color: "#37b29a"
            text: "Zoom"
            font.pixelSize: 14
                    font.family: UIConstants.customFont

        }

        Label {
            x: 14
            y: 60
            width: 40
            height: 18
            color: "#37b29a"
            text: "Focus"
            font.pixelSize: 14
                    font.family: UIConstants.customFont

        }


        Label {
            x: 69
            y: 31
            width: 16
            height: 18
            color: "#37b29a"
            text: "In"
            font.pixelSize: 14
            font.family: UIConstants.customFont

        }

        BalancedSlider {
            id: balancedSlider
            x: 69
            y: 16
            anchors.left: parent.left
            anchors.leftMargin: 69
            // anchors.right: parent.right
            // anchors.rightMargin: 69
            width: 400
            height: 9
        }

        BalancedSlider {
            id: balancedSlider1
            x: 69
            y: 66
            anchors.left: parent.left
            anchors.leftMargin: 69
            // anchors.right: parent.right
            // anchors.rightMargin: 69
             width: 400
            height: 9
        }

        Label {
            x: 55 + balancedSlider.width
            y: 31
            width: 24
            height: 18
            color: "#37b29a"
            text: "Out"
            font.pixelSize: 14
            font.family: UIConstants.customFont
        }

        Label {
            x: 69
            y: 79
            width: 16
            height: 18
            color: "#37b29a"
            text: "Far"
            font.pixelSize: 14
            font.family: UIConstants.customFont
        }

        Label {
            x: 55 + balancedSlider1.width
            y: 79
            width: 24
            height: 18
            color: "#37b29a"
            text: "Near"
            font.pixelSize: 14
            font.family: UIConstants.customFont
        }

    }


    Rectangle {
        id: cal
        color: UIConstants.transparentColor
        border.color: UIConstants.genBorderColor
        radius: 3
        anchors.top: bg.bottom
        anchors.bottom: parent.bottom
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 32
        anchors.bottomMargin: 0


        RecTitle {
            id: recTitle
            x: 8
            y: -18
            z: switch_.z  + 1
            title: "Tùy chỉnh"
        }

        QDTSwitch {
            id: switch_
            x: 8
            y: 19
            text: "Chỉnh tay"
        }

        Item {
            enabled: switch_.checked
            opacity: switch_.checked ? 1 : UIConstants.lowOpacity
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: switch_.bottom
            anchors.topMargin: -22
            anchors.bottomMargin: 10
            anchors.bottom: parent.bottom

            Slider_ {
                id: slider_
                x: 167
                y: 79
                anchors.left: parent.left
                anchors.leftMargin: 160
                // anchors.right: parent.right
                // anchors.rightMargin: 76
                 width: 400
                height: 27
            }

            Label {
                x: 8
                y: 83
                width: 128
                height: 18
                color: "#37b29a"
                text: "Giá trị chỉnh tay"
                font.pixelSize: 14
                        font.family: UIConstants.customFont

            }



            Label {
                x: 11
                y: 28
                width: 128
                height: 18
                color: "#37b29a"
                text: "Chế độ chỉnh tay"
                font.pixelSize: 14
                        font.family: UIConstants.customFont

            }

            Item {
                x: 150
                y: 0
                width: 313
                height: 74

                RadioButton_ {
                    id: radioButton_
                    x: 11
                    y: 25
                    width: 85
                    height: 26
                    text: "Clear"
                    checked: false
                }

                RadioButton_ {
                    id: radioButton_1
                    x: 114
                    y: 25
                    width: 85
                    height: 26
                    text: "ND 1"
                    checked: false
                }

                RadioButton_ {
                    id: radioButton_2
                    x: 228
                    y: 25
                    width: 85
                    height: 26
                    text: "ND 2"
                    checked: false
                }
            }
        }

    }
}
