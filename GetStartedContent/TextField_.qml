import QtQuick
import QtQuick.Controls.Basic

TextField {
    id: control
    placeholderText: qsTr("Enter Something")
    color: "#37B29A"
    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 25
        color: control.enabled ? "transparent" : "#353637"
        border.color: control.enabled ? "#37B29A" : "transparent"
    }
}
