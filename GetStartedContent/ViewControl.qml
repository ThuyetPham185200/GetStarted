import QtQuick 2.15
import QtQml.Models 2.15
import QtQuick.Controls 2.15
import  QtQuick.Studio.Components 1.0
import QtQuick.Studio.DesignEffects
import GetStarted

Rectangle {
    id: root
    width: 200
    height: 200
    color: "transparent"
    property var iconList: []
    signal viewChanged()


    Image {
        id: toot
        x: 141
        y: 10
        width: 31
        height: 25
        rotation: 45
        source: "icons/export/chevron(1).svg"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            enabled: true
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onEntered: {
                toot.opacity = 0.7;
            }
            onExited: {
                toot.opacity = 1.0;
            }
            onClicked: {
                toot.opacity = 0.4
                content.visible = !content.visible
            }
            onReleased: {
                  //popup.close()
                  toot.opacity = 1.0;
            }
        }
    }

    Rectangle {
        id: content
        color: "transparent"
        radius: 10
        border.color: "#37B293"
        anchors.top: parent.top
        anchors.topMargin: 26
        anchors.right: parent.right
        anchors.rightMargin: 47
        width: parent.width - 40
        height: width

        GridView {
            anchors.fill: parent
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: -8
            cellWidth: 80
            cellHeight: 80

            displaced: Transition {
                NumberAnimation {
                    properties: "x,y"
                    easing.type: Easing.OutQuad
                }
            }
            model: DelegateModel {
                id: visualModel

                model: ListModel {
                    id: colorModel
                    ListElement { color: "#2B2D2F"; width_ : 80; height_: 80; text_ : "Map" }
                    ListElement { color: "#2B2D2F"; width_ : 80; height_: 80; text_ : "IR" }
                    ListElement { color: "#2B2D2F"; width_ : 80; height_: 80; text_ : "EO" }
                }

                delegate: DropArea {
                    id: delegateRoot

                    required property color color
                    required property int width_
                    required property int height_
                    required property string text_
                    width: delegateRoot.width_
                    height: delegateRoot.height_

                    onEntered: function(drag) {
                        var source = (drag.source as Icon).visualIndex
                        var des = icon.visualIndex
                        if (source !== des) {
                            visualModel.items.move(source, des);
                            viewChanged()
                        }
                    }


                    property int visualIndex: DelegateModel.itemsIndex

                    Icon {
                        id: icon
                        //z: root.z + 1
                        opacity: 0.7
                        width: delegateRoot.width_ - 8
                        height:  delegateRoot.height_ - 8
                        dragParent: root
                        text_: delegateRoot.text_
                        visualIndex: delegateRoot.visualIndex
                        color: delegateRoot.color
                        Component.onCompleted: {
                            iconList.push(icon)
                        }
                    }
                }
            }
        }
    }

    // Timer {
    //     id: timer
    //     running: false
    //     repeat: false
    //     interval: 200
    //     onTriggered: {
    //         viewChanged()
    //     }
    // }
}
