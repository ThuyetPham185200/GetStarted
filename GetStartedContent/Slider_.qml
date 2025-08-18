import QtQuick
import QtQuick.Controls.Basic
import GetStarted

Slider {
    id: control
    from: 0
    to: 100
    value: 50

    width: 300
    height: 60

    background: Rectangle {
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 200
        implicitHeight: 4
        width: control.availableWidth
        height: implicitHeight
        radius: 2
        color: "#bdbebf"

        Rectangle {
            width: control.visualPosition * parent.width
            height: parent.height
            color: "#37B29A"
            radius: 2
        }
    }

    handle: Rectangle {
        id: handleRect
        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 13
        implicitHeight: 13
        radius: 13
        color: control.pressed ? "#f0f0f0" : "#f6f6f6"
        border.color: "#bdbebf"
    }

    // Label hiển thị giá trị from (bên trái)
    Label {
        text: control.from
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: control.left
        anchors.leftMargin: 0
        font.family: UIConstants.customFont
        color: UIConstants.genBorderColor

    }

    // Label hiển thị giá trị to (bên phải)
    Label {
        text: control.to
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.right: control.right
        anchors.rightMargin: 0
        font.family: UIConstants.customFont
        color: UIConstants.genBorderColor
    }

    // Label hiển thị giá trị hiện tại (theo handle)
    Label {
        text: Math.round(control.value)
        anchors.horizontalCenter: handleRect.horizontalCenter
        anchors.bottom: handleRect.top
        anchors.bottomMargin: 5
        font.family: UIConstants.customFont
        color: UIConstants.genBorderColor
    }
}
