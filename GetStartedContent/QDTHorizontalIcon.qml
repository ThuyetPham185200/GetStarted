import QtQuick 2.12
import QtQuick.Controls 2.12
import GetStarted
Rectangle {
    id: root

    property string bColor: "#4DC7F1"

    border.color: root.bColor
    radius: 2
    width: 80
    height: 35


    property alias iconSrc: icon.source
    property alias title: text_.text
    property alias bgVisile: bg1.visible
    signal selected()

    color: "transparent"

    Rectangle {
        id: bg
        anchors.left: parent.left
        anchors.leftMargin: 1
        anchors.right: parent.right
        anchors.rightMargin: 1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1
        anchors.top: parent.top
        anchors.topMargin: 1
        gradient: Gradient {
            GradientStop { position: 0.0; color:"transparent"}   // Bottom
            GradientStop { position: 1.0; color: root.bColor } // Top
        }
        opacity: 0.5
        visible: false
    }

    Rectangle {
        id: bg1
        anchors.left: parent.left
        anchors.leftMargin: 1
        anchors.right: parent.right
        anchors.rightMargin: 1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1
        anchors.top: parent.top
        anchors.topMargin: 1
        color: root.bColor
        opacity: 0.5
        visible: false
    }

    Image {
        id: icon
        x: 8
        y: 1
        source: "icons/EO.svg"
    }

    Label {
        id: text_
        y: 9
        width: 25
        height: 18
        anchors.horizontalCenter: parent.horizontalCenter
        color: root.bColor
        horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenterOffset: 21    // Vertically align text in the center
        font { pixelSize:21; }
        elide: Qt.ElideRight
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        enabled: true
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            selected()
        }

        onEntered: {
            bg.visible = true
        }
        onExited: bg.visible = false

    }
}
