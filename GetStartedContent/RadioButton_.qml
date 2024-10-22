import QtQuick
import QtQuick.Controls.Basic

RadioDelegate {
    id: control
    text: qsTr("RadioDelegate")
    checked: true

    contentItem: Text {
        leftPadding: control.indicator.width- 5
        text: control.text
        font.pixelSize: 12
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? "#17a81a" : "#37B29A"
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
    }

    indicator: Rectangle {
        implicitWidth: 25
        implicitHeight: 25
        x: 1
        y: parent.height / 2 - height / 2
        radius: 2
        color: "transparent"
        border.color: control.down ? "#17a81a": "#37B29A"

        Rectangle {
            width: 21
            height: width
            x: 2
            y: 2
            radius: 2
            color: control.down ?"#17a81a" : "#37B29A"
            visible: control.checked
        }
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 25
        visible: control.down || control.highlighted
        color: control.down ? "#bdbebf" : "#eeeeee"
    }
}
