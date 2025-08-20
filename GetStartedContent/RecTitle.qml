import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    width: 100
    height: 35
    color: "#3C3F41"
    property alias title: txt.text
    Label {
        id: txt
        anchors.centerIn: parent
        //width: 100
        color: "#37b29a"
        text: "Zoom"
        font.pixelSize: 16
                font.family: UIConstants.customFont

    }
}
