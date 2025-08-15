import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 210
    height: 150
    property alias title: label1.text
    property var mouseArea: mouse
    signal hidden()
    onHidden: {
        rectBorder.visible = false
    }
    signal clicked()
    Rectangle {
        id: label
        width: 100
        height: 35
        color: "transparent"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        MouseArea {
            id: mouse

            anchors.fill: parent
            onClicked: {
                rectBorder.visible = !rectBorder.visible
                root.clicked()
            }
        }
        Item {
            id: content
            //anchors.centerIn: parent
            //anchors.horizontalCenterOffset: width/ 2 - 15
            width: chevron_1.width + label.contentWidth + 15
            height: 30
            Image {
                id: chevron_1
                x: 5
                y: 10
                width: 16
                height: 12
                source: "icons/chevron_1.svg"
                fillMode: Image.PreserveAspectFit
            }

            Label {
                id: label1
                x: 22
                y: 7
                color: "white"
                text: qsTr("Label")
            }


            RectBorder {
                id: rectBorder
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 2
                visible: false
                x: chevron_1.x
                color: "red"
                length: 70
                height: 1
                z: content.z + 1
            }
        }

    }

    Rectangle {
        visible: rectBorder.visible
        anchors.top: label.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: 100
        radius: 3
    }

}
