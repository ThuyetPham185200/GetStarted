// import QtQuick 2.12
// import QtQuick.Controls 2.12
// import QDTControlSystem.ScreenTools 1.0

// TextField {
//     id: control
//     //placeholderText: qsTr("Enter Something")
//     color: UIConstants.genBorderColor
//     placeholderTextColor: UIConstants.genBorderColor
//     height: 25
//
//     background: Rectangle {
//         //anchors.verticalCenter: parent.verticalCenter
//         implicitWidth: control.width
//         implicitHeight: control.height
//         color: control.enabled ? UIConstants.transparentColor : "#353637"
//         border.color: control.enabled ? UIConstants.genBorderColor : UIConstants.transparentColor
//     }
// }


//------------------ Include QT libs ------------------------------------------
import QtQuick 2.11
import QtQuick.Templates 2.15 as T
import QtQuick.Controls 2.15
import QtQuick.Controls.impl 2.15
import QtQuick.Controls.Material 2.15

//----------------- Include Custom views --------------------------------------
import GetStarted

//---------------- Component definition ---------------------------------------

T.TextField {
    id: control
    property string bColor: UIConstants.genBorderColor

    property real  bgPadding: 0
    property alias echoMode : control.echoMode
    property alias txtheight: control.contentHeight
    clip: true

    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            placeholderText ? placeholder.implicitWidth + leftPadding + rightPadding : 0)
                            || contentWidth + leftPadding + rightPadding
    implicitHeight: Math.max(contentHeight + topPadding + bottomPadding,
                             background ? background.implicitHeight : 0,
                             placeholder.implicitHeight + topPadding + bottomPadding)
//    implicitHeight: ScreenTools.implicitTextFieldHeight

    topPadding: ScreenTools.normalSpacing
    bottomPadding: ScreenTools.smallSpacing

    font { pixelSize: ScreenTools.mediumFontPointSize; family: UIConstants.customFont }

    selectByMouse: true
    color: enabled ? /*Material.foreground*/ control.bColor : Material.hintTextColor
    selectionColor: Material.accentColor
    selectedTextColor: Material.primaryHighlightedTextColor
    verticalAlignment: TextInput.AlignVCenter

//    cursorDelegate: CursorDelegate { }

    PlaceholderText {
        id: placeholder
        x: control.leftPadding
        y: control.topPadding
        clip: true
        width: control.width - (control.leftPadding + control.rightPadding)
        height: control.height - (control.topPadding + control.bottomPadding)
        text: control.placeholderText
        font: control.font
        color: control.bColor
        verticalAlignment: control.verticalAlignment
        elide: Text.ElideRight
        renderType: control.renderType
        visible: !control.length && !control.preeditText && (!control.activeFocus || control.horizontalAlignment !== Qt.AlignHCenter)
    }

    background: Rectangle {
        y: control.height - height - control.bottomPadding + control.bgPadding
        implicitWidth: ScreenTools.defaultFontPixelWidth * 12
        //implicitHeight: 30
        height: control.activeFocus || control.hovered ? 2 : 1
        color: control.bColor
        // color: control.activeFocus ? control.Material.accentColor
        //                            : (control.hovered ? control.Material.primaryTextColor : control.Material.hintTextColor)
    }

}
