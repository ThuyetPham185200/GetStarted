import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    property int from: 50
    property int to: 200
    width: mouse.containsMouse ? to : from
    height: 30
    Behavior on width {
        NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
    }
    Behavior on anchors.right {
        NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
    }
    Behavior on anchors.left {
        NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
    }
    Rectangle {
        id: bg
        anchors.fill: parent
        color:  "#37B29A"
        visible: mouse.containsMouse
        opacity: 0.3
        radius: 2
        Behavior on color {
            NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
        }
    }

    property alias title: txt.text
    property alias iconSrc: _signal.source
    property alias iconWidth: _signal.width
    property alias iconHeight: _signal.height
    property alias titleSize: txt.font.pixelSize
    signal selected()
    Image {
        id: _signal
        anchors.left: parent.left
        anchors.leftMargin: mouse.containsMouse ? 5 : 20
        anchors.verticalCenter: parent.verticalCenter
        Behavior on anchors.leftMargin {
            NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
        }
        width: 20
        height: width
        source: "icons/Tracker.svg"
        //fillMode: Image.PreserveAspectFit
    }

    Text {
        id:  txt
        anchors.left: _signal.right
        anchors.leftMargin: 5
        visible: mouse.containsMouse
        anchors.verticalCenter: parent.verticalCenter
        color: "#37B29A"
        font.family: Constants.font.family
        text: qsTr("(Az,El)")
        Behavior on visible {
            NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
        }

    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        enabled: true
        hoverEnabled: true
        onClicked: selected()
    }
}
