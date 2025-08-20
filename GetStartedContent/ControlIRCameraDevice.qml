import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 943
    height: 434
    Image {
        id: cameraIP
        x: 8
        y: 8
        width: 273
        height: 43
        source: "images/cameraIP.png"
        fillMode: Image.PreserveAspectFit
    }
    Rectangle {
        id: bg
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: cameraIP.bottom
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
            width: 500
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
            width: 500
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


        Button_ {
            id: button_
            x: 10 + balancedSlider1.width/2
            y: 113
            width: 96
            height: 29
            text: "Nuc 3"
        }

        Button_ {
            id: button_1
            x: 0 + balancedSlider1.width
            y: 113
            width: 96
            height: 29
            text: "Nuc 5"
        }
    }

    Rectangle {
        color: UIConstants.transparentColor
        border.color: UIConstants.genBorderColor
        radius: 3
        anchors.top: bg.bottom
        anchors.bottom: parent.bottom
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 22
        ComboBox_ {
            id: comboBox_
            x: 14
            y: 32
        }
        RecTitle {
            id: recTitle
            x: 8
            y: -18
            z: comboBox_.z  + 1
            title: "Chế độ AGC"
            color: "#1F2125"
        }

        Item {
            enabled: comboBox_.currentIndex > 0
            opacity: comboBox_.currentIndex > 0 ? 1 : UIConstants.lowOpacity
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: comboBox_.bottom
            anchors.topMargin: 0
            anchors.bottomMargin: 10
            anchors.bottom: parent.bottom
            Label {
                x: 13
                y: 99
                width: 128
                height: 18
                color: "#37b29a"
                text: "Độ tương phản (%)"
                font.pixelSize: 14
                        font.family: UIConstants.customFont

            }

            Label {
                x: 13
                y: 24
                width: 128
                height: 18
                color: "#37b29a"
                text: "Độ sáng (%)"
                font.pixelSize: 14
                        font.family: UIConstants.customFont

            }
            Slider_ {
                id: slider_
                x: 14
                y: 20
                anchors.left: parent.left
                anchors.leftMargin: 198
                anchors.right: parent.right
                anchors.rightMargin: 25
                height: 25
            }

            Slider_ {
                id: slider_1
                x: 14
                y: 92
                anchors.left: parent.left
                anchors.leftMargin: 198
                anchors.right: parent.right
                anchors.rightMargin: 25
                height: 25
            }

        }

    }

}
