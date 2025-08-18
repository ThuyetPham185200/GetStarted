import QtQuick
import QtQuick.Controls.Basic
import GetStarted
SwitchDelegate {
    id: control
    text: qsTr("SwitchDelegate")
    checked: true
    width: 150
    height: 50
    font.family: Constants.font.family
    font.pixelSize: 11
    contentItem: Text {
        leftPadding: control.indicator.width -10
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? "transparent" : "#37B29A"
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
        font.family: UIConstants.customFont

    }

    indicator: Rectangle {
        implicitWidth: 50
        implicitHeight: 25
        x: 0
        y: parent.height / 2 - height / 2
        radius: 2
        color: "transparent"
        border.color:  "#37B29A"

        Rectangle {
            x: control.checked ? parent.width - width - 2 : 2
            y: 2
            width: 21
            height: width
            radius: 2
            color: control.down ? "#37B29A" : "transparent"
            border.color: control.checked ? (control.down ? "#17a81a" : "#37B29A") : "#999999"
        }
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 25
        border.color: "#37B29A"
        visible: control.down || control.highlighted
        color: "transparent" //control.down ? "#bdbebf" : "#eeeeee"
    }
}
