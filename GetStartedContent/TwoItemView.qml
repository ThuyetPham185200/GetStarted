import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

    Rectangle {
        id: root
        width: 200
        height: width
        signal clicked()
        transformOrigin: Item.Center
        states: State {
            name: "hovered"
            when: mouseArea.containsMouse
            PropertyChanges {
                target: root
                scale: 1.1 // 250/200 = 1.25 and 350/300 ≈ 1.167, you can pick one that looks best
            }
        }

    transitions: Transition {
        NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
    }
    color: Constants.transparentColor



    Rectangle {
        id: item1
        anchors.left: parent.left
        anchors.leftMargin: 2
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2
        color: "#2B2D2F"
        radius: 2
        width: root.width / 2 - 1
    }
    Rectangle {
        id: item2
        anchors.left: item1.right
        anchors.leftMargin: 1
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2
        color: "#2B2D2F"
        radius: 2
        width: root.width / 2 - 1
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        hoverEnabled: true
        onClicked: {
            root.clicked()
        }

}
}
