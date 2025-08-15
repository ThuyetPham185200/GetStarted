import QtQuick 2.12
import QtQuick.Controls 2.12
import GetStarted
Rectangle {
    id: root

    property string bColor: UIConstants.genBorderColor

    border.color: root.bColor
    radius: 2
    width: 80
    height: 35


    property alias iconSrc: icon.src
    property alias title: text_.text
    property alias bgVisile: bg1.visible
    signal selected()

    color: UIConstants.transparentColor

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
            GradientStop { position: 0.0; color: UIConstants.transparentColor }   // Bottom
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

    QDTSVGIcon {
        id: icon
        x: 8
        y: 1
        bColor: root.bColor
    }

    Label {
        id: text_
        y: 9
        width: 25
        height: 18
        anchors.horizontalCenter: parent.horizontalCenter
        text: "EO"
        color: root.bColor
        horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenterOffset: 21    // Vertically align text in the center
        font { pixelSize: ScreenTools.mediumFontPointSize; family: UIConstants.customFont }
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
