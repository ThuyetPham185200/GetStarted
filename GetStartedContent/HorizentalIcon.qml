import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    border.color: "#37B293"
    radius: 2
    width: 120
    height: 40
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
            GradientStop { position: 0.0; color: "transparent" }   // Bottom
            GradientStop { position: 1.0; color: "#37B293" } // Top
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
        color: "#37B293"
        opacity: 0.5
        visible: false
    }
    Image {
        id: icon
        x: 8
        y: 3
        source: "icons/EO.svg"
        fillMode: Image.PreserveAspectFit
    }

    Item {
        anchors.left: icon.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        Label {
            id: text_
            y: 11
            width: 70
            height: 18
            x: 4
            text: "Camera"
            color: "#37B293"
            horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: 0    // Vertically align text in the center
            font.family: Constants.font.family
            elide: Qt.ElideRight
        }
    }

    // MouseArea {
    //     id: mouse
    //     anchors.fill: parent
    //     enabled: true
    //     hoverEnabled: true
    //     cursorShape: Qt.PointingHandCursor
    //     onClicked: {
    //         selected()
    //     }

    //     onEntered: {
    //         bg.visible = true
    //     }
    //     onExited: bg.visible = false

    // }
}
