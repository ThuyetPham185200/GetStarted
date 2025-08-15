import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    width: 81 *( repe.count) - 1
    height: 25
    property var menuModel: listModel
    signal selected(int index)
    ListModel {
        id: listModel
        ListElement {tit: "Camera"; checked: true}
        ListElement {tit: "Joystick"; checked: false}
        ListElement {tit: "Gimbal"; checked: false}
        ListElement {tit: "Đo xa"; checked: false}
    }
    Rectangle {
        id: bg
        color: "#37B29A"
        anchors.fill: parent
        Rectangle {
            id: cak
            color: "white"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 2
        }
    }
    RowLayout {
        id: layout
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2

        spacing: 1

        Repeater {

            id: repe
            model: menuModel // number of menu items
            Rectangle {
                id: item_
                width: 80
                height: layout.height
                color: checked ?"#37B29A" : "gray"

                Text {
                    anchors.centerIn: parent
                    text: tit
                    color: "white"
                    font.pixelSize: 14
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: {
                        for (var i = 0; i < menuModel.count; i ++) {
                            menuModel.setProperty(i,"checked", false)
                        }
                        menuModel.setProperty(index,"checked", true)
                        root.selected(index)
                    }
                    onEntered: {
                        item_.opacity = 0.7
                    }
                    onExited: {
                        item_.opacity = 1.0
                    }
                }
            }
        }
    }
}
