import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Item {
    id: root
    width: 200
    height: 70
    property alias title: txt.text
    property alias iconSrc: _signal.source
    property alias iconWidth: _signal.width
    property alias iconHeight: _signal.height
    property alias titleSize: txt.font.pixelSize
    signal selected()
    Image {
        id: _signal
        anchors.top: parent.top
        anchors.topMargin: mouse.containsMouse ? 5 : 20
        Behavior on anchors.topMargin {
            NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
        }
        anchors.horizontalCenter: parent.horizontalCenter
        width: 34
        height: width
        source: "images/api(2).png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id:  txt
        anchors.top: _signal.bottom
        anchors.topMargin: 5
        visible: mouse.containsMouse
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#37B29A"
        font.family: Constants.font.family
        text: qsTr("Connect to NightHawk")
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
