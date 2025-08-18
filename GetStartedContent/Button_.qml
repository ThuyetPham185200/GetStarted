import QtQuick
import QtQuick.Controls.Basic
import GetStarted

Button {
    id: control
    text: qsTr("Button")

    contentItem: Text {
        font.family: UIConstants.customFont
        text: control.text
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? "#17a81a" : "#37B29A"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 50
        implicitHeight: 25
        opacity: enabled ? 1 : 0.3
        border.color: control.down ? "#17a81a" : "#37B29A"
        border.width: 1
        color: "transparent"
        radius: 2
    }
}
