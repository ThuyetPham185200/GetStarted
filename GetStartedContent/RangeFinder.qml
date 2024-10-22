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
        x: 301
        width: 98
        height: 13
        anchors.top: parent.top
        anchors.topMargin: 8
        text: "Range Finder"
        color: "#37B29A";  font.family: Constants.font.family
    }

    Button_ {
        id: button
        x: 199
        y: 66
        text: qsTr("Get range")
    }

    Text {
        id: _text
        x: 338
        y: 79
        text: qsTr("Target Distance: 12.3 km")
        font.pixelSize: 12
        color: "#37B29A";  font.family: Constants.font.family
    }
}
