/**
 * ==============================================================================
 * @Project: IIRSeekerGM
 * @Component: Text for mutual using
 * @Breif:
 * @Author: Thuyet Pham
 * @Date: 27/02/2021
 * @Language: QML
 * @License: (c) -----
 * ============================================================================
 */

//------------------ Include QT libs ------------------------------------------
import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.3

//---------------- Include Custom libs ----------------------------------------
import GetStarted

//---------------- Component definition ---------------------------------------
Text {
    id: rootItem

    Material.accent: UIConstants.appAccent
    Material.theme: UIConstants.darkTheme ? Material.Dark : Material.Light

    text: "Text"
    font {  family: UIConstants.customFont;
            pixelSize: ScreenTools.defaultFontPointSize }
    clip: true
    color: UIConstants.textFooterColor
}
