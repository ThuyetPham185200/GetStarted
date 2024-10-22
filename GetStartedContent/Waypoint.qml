import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    property alias number: name.text
    signal goto_()
    width: 26
    height: 26
    color: "transparent"
    border.color: "#37B29A"
    radius: 13

    Text {
        id: name
        width: 13
        height: 13
        anchors.centerIn: parent
        text: qsTr("0")
        color: "#37B29A"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        enabled: true
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            if (popup.open_) {
                popup.close()
                popup.open_ = false
            } else {
                popup.x = mouseX
                popup.y = mouseY
                popup.open()
                popup.open_ = truess
            }
            goto_()
        }
    }

    Popup {
        id: popup
        property bool open_: false
        contentItem: Text {
            text: "goto"
        }
    }
}
