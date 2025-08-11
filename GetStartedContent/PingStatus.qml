import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    color: "transparent"
    border.color: "#37B29A"
    width: 120
    height: 150

    ListModel {
        id: listStatus
        ListElement {name: "NightHawk"}
        ListElement {name: "SRHawk"}
        //ListElement {name: "UAV"}
        ListElement {name: "Missle"}
    }

    Column {
        anchors.fill: parent
        spacing: 5

        Repeater {
            model: listStatus
            delegate: Rectangle {
                radius: 5
                height: 50
                width: 80
                color: "transparent"
                Image {
                    id: icon
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 4
                    source: "images/signal1.png"
                    height: 25
                    width: 25
                }

                Text {
                    anchors.left: icon.right
                    anchors.top: parent.top
                    anchors.topMargin: 3
                    anchors.leftMargin: 3
                    text: name // Bind the text to ListModel element
                    color: "#37B29A"
                    font.family: Constants.font.family
                }
            }
        }
    }
}
