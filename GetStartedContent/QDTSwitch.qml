import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

SwitchDelegate {
    id: control
    property string bColor: UIConstants.genBorderColor

    text: qsTr("SwitchDelegate")
    checked: false
    font { pixelSize: ScreenTools.mediumFontPointSize; family: UIConstants.customFont }

    contentItem: Text {
        leftPadding: control.indicator.width -10
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? UIConstants.transparentColor : control.bColor
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
    }

    indicator: Rectangle {
        implicitWidth: 50
        implicitHeight: 25
        x: 0
        y: parent.height / 2 - height / 2
        radius: 2
        color: UIConstants.transparentColor
        border.color:  control.bColor

        Rectangle {
            x: control.checked ? parent.width - width - 2 : 2
            y: 2
            width: 21
            height: width
            radius: 2
            color: control.checked ? control.bColor : UIConstants.transparentColor
            border.color: control.bColor
        }
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 25
        //border.color: control.bColor
        visible: control.down || control.highlighted
        color: UIConstants.transparentColor //control.down ? "#bdbebf" : "#eeeeee"
    }
}
