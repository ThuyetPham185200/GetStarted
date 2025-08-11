import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
import QtQuick.Layouts

Item {
    id: root
    width: 350
    height: 510

    signal closed()
    property var m_parent
    Rectangle {
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        height: 5
        radius: 2
        border.color: "#37B29A"
        color: "#2B2D2F"
    }

    // StackLayout {
    //     id: contentPanel
    //     z: root.z + 1
    //     anchors.left: parent.left
    //     anchors.top: parent.top
    //     anchors.right: parent.right
    //     height: 500
    //     VerticalSettings {
    //     }
    // }

    MouseArea {
        anchors.fill: parent
        property int startX: 0
        property int startY: 0
        property int startMouseX: 0
        property int startMouseY: 0
        cursorShape: Qt.ClosedHandCursor

        onPressed: {
            startX = root.x
            startMouseX = mouseX
            //startY = verticalPanel.y
            //startMouseY = mouseY
        }

        onPositionChanged: {
            if (pressed && m_parent) {
                // Calculate new X position
                var dx = mouseX - startMouseX
                var newX = startX + dx
                if (newX >= 0 && newX < m_parent.width - root.width) {
                    root.x = newX
                }

                if(m_parent.minX > root.x)
                    m_parent.minX = root.x
                // // Calculate new Y position
                // var dy = mouseY - startMouseY
                // var newY = startY + dy
                // if (newY >= 0 && newY < root.height - verticalPanel.height) {
                //     verticalPanel.y = newY
                // }
            }
        }
    }

    Image {
        id: close
        z: root.z + 2
        x: 300
        y: 0
        width: 25
        height: width
        source: "icons/Close.svg"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onEntered: root.opacity = .7
            onExited: root.opacity = 1.0
            onClicked: {
                 //root.closed()
                root.visible = false
            }

        }
    }

}
