import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 300
    color: "#00000000"



    Label {
        id: title_
        x: 281
        width: 138
        height: 13
        anchors.top: parent.top
        anchors.topMargin: 8
        text: "Information System"
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: _text
        x: 304
        y: 143
        text: qsTr("Version: 1.0.0")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: _text1
        x: 494
        y: 143
        text: qsTr("Mission: A1")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }

    Text {
        id: _text2
        x: 118
        y: 143
        text: qsTr("Name: SkyView")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }
}
