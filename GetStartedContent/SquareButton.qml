import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Rectangle {
    id: root
    width: 25
    height: width
    border.color: "#37B293"
    color: "transparent"
    property bool checked: false
    property alias title: textInput.text
    signal selected()
    Text {
        id: textInput
        anchors.centerIn: parent
        width: parent.width - 2
        color: "#37B29A"
        text: "0"
        font.pixelSize: 11
        horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
        verticalAlignment: Text.AlignVCenter    // Vertically align text in the center
        font.family: Constants.font.family
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
