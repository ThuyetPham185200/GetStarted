/**
 * ==============================================================================
 * @Project: XFace Application
 * @Component: Label for mutual using
 * @Breif:
 * @Author: Truong Nguyen
 * @Date: 27/02/2021
 * @Language: QML
 * @License: (c) Viettel Aerospace Institude - Viettel Group
 * ============================================================================
 */

//------------------ Include QT libs ------------------------------------------
import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.3

//---------------- Include Custom libs ----------------------------------------
import GetStarted

//---------------- Component definition ---------------------------------------
Label {
    id: rootItem
    Material.theme: UIConstants.darkTheme ? Material.Dark : Material.Light
    text: "Label"
    font {  family: UIConstants.customFont;
            pixelSize: ScreenTools.defaultFontPointSize }
    color: UIConstants.textFooterColor
}
