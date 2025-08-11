import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
import QtQuick.Layouts

Rectangle {
    id: root
    width: parent.width
    height: parent.height
    property string name: "CTRL"
    //radius: 5
    color: "#1F2125"

    // Label {
    //     id: eo
    //     color: "#37B29A"
    //     text:  String(root)
    //     anchors.centerIn: parent
    //     font.family: Constants.font.family
    // }

    states: State {
        name: "loaded"
        PropertyChanges { target: root; opacity: 1 }
    }

    transitions: Transition {
        NumberAnimation { duration: 2000; property: "opacity"; from: 0; to: 1 }
    }


    Rectangle {
        id: cameraArea
        border.color: "#4DC7F1"
        anchors.left: parent.left
        anchors.leftMargin: 3
        anchors.top: parent.top
        anchors.topMargin: 3
        color: Constants.transparentColor
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 3
        width: 284
        radius: 3


        StackLayout {
            id: view
            x: 30
            y: 59
            VerticalEOSetting {
                id: verticalEOSetting

            }
            VerticalIRSetting {
                id: verticalIRSetting

            }
        }


        QDTHorizontalIcon {
            id: qDTHorizontalIcon
            x: 30
            y: 8
            width: 91
            height: 35
            title: "EO"
            onSelected: {
                view.currentIndex = 0
            }
        }

        QDTHorizontalIcon {
            id: qDTHorizontalIcon1
            x: 151
            y: 8
            width: 91
            height: 35
            title: "IR"
            iconSrc: "icons/IR.svg"
            onSelected: {
                view.currentIndex = 1
            }
        }

    }

    Rectangle {
        id: jsao
        border.color: "#4DC7F1"
        anchors.left: cameraArea.right
        anchors.right: parent.right
        anchors.rightMargin: 3
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 3
        color: Constants.transparentColor

        height: cameraArea.height / 2
        radius: 3

        Rectangle {
            anchors.centerIn: parent
            width: 250
            height: 100
            color: "transparent"

            Row {
                anchors.fill: parent
                spacing: 20

                VirtualJoystick {
                    id: virtualJoystick
                }

                Rectangle {

                    radius: 2
                    border.color: "#37B293"
                    color: "transparent"
                    height: 100
                    width: height

                    RadioButton_ {
                        id: radioButton_4
                        x: 10
                        y: 20
                        width: 82
                        height: 25
                        text: "Zoom"
                    }

                    RadioButton_ {
                        id: radioButton_5
                        x: 10
                        y: 56
                        width: 82
                        height: 25
                        text: "Focus"
                    }
                }
            }
        }
    }

    Rectangle {
        id: gimbal
        border.color: "#4DC7F1"
        anchors.left: cameraArea.right
        anchors.right: parent.right
        anchors.rightMargin: 3
        anchors.leftMargin: 5
        anchors.top: jsao.bottom
        anchors.topMargin: 5
        color: Constants.transparentColor
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 3
        radius: 3
        Image {
            id: img
            anchors.centerIn: parent
            source: "images/gimbal.png"
        }
    }



}
