pragma Singleton
import QtQuick 6.7
import QtQuick.Studio.Application

QtObject {
    readonly property int width: 1920
    readonly property int height: 1080

    property string relativeFontDirectory: "fonts"

    /* Edit this comment to add your custom font */
    readonly property font font: Qt.font({
                                             family: /*Qt.application.font.family*/ commic.name,
                                             pixelSize: Qt.application.font.pixelSize
                                         })
    readonly property font largeFont: Qt.font({
                                                  family: /*Qt.application.font.family*/ commic.name,
                                                  pixelSize: Qt.application.font.pixelSize * 1.6
                                              })
    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-Bold.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-BoldItalic.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-ExtraLight.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-ExtraLightItalic.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-Italic.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-Light.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-LightItalic.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-Medium.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-MediumItalic.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-Regular.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-SemiBold.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/BaiJamjuree-SemiBoldItalic.ttf"
    // }

    readonly property FontLoader commic: FontLoader {
        source: "../GetStartedContent/fonts/fontawesome-webfont.ttf"
    }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/FontAwesomeRegular-400.ttf"
    // }

    // FontLoader {
    //     source: "qrc:fonts/FontAwesomeSolid-900.ttf"
    // }

    // FontLoader {
    //     source: "qrc:fonts/fa-brands-400.ttf"
    // }

    // FontLoader {
    //     source: "qrc:fonts/fa-regular-400.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/fa-solid-900.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/fa-brands-400.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/fa-regular-400.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/ComicSansMS3.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/Nunito-Regular.ttf"
    // }

    // FontLoader {
    //     source: "../GetStartedContent/fonts/fa-v4compatibility.ttf"
    // }
    readonly property color backgroundColor: "#EAEAEA"


    property StudioApplication application: StudioApplication {
        fontPath: Qt.resolvedUrl("../GetStartedContent/" + relativeFontDirectory)
    }
}
