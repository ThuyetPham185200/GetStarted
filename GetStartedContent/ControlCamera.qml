import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Item {
    id: root
    width: 650
    height: 450





    StackLayout {
        id: view
        anchors.top: verticalMenu.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 5
        anchors.bottom: parent.bottom
        EOConfigShortcut {
        }

        IRConfigShortcut {

        }
    }


    VerticalMenu {
        id: verticalMenu
        x: 111
        y: 1
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

    Label {
        x: 8
        y: 4
        width: 104
        height: 18
        color: "white"
        text: "Chế độ Camera"
        font.pixelSize: 14
                font.family: UIConstants.customFont

    }

}
