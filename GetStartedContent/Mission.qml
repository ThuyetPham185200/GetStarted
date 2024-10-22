import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 300
    color: "transparent"
    property alias currentIndex: content.currentIndex
    Label {
        id: title
        x: 324
        y: 0
        text: "Mission"
        height: 20
        color: "#37B29A"
        font.family: Constants.font.family
    }
    StackLayout {
       id: content
       anchors.top: title.bottom
       anchors.left: parent.left
       anchors.right: parent.right
       anchors.bottom: parent.bottom
       anchors.leftMargin: 8
       anchors.rightMargin: -8
       anchors.topMargin: 6
       anchors.bottomMargin: -6
       S125 {}
       A1 {}
   }
}
