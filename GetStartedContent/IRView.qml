import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    property string name: "IR"
    width: parent.width
    height: parent.height
    anchors.fill: parent
    radius: 5
    color: "#3C3F41"
    border.color: "#4DC7F1"
    Label {
        id: eo
        text: String(root)
        color: "#37B29A"
        anchors.centerIn: parent
        font.family: Constants.font.family
    }
    states: State {
        name: "loaded"
        PropertyChanges { target: root; opacity: 1 }
    }

    transitions: Transition {
        NumberAnimation { duration: 500; property: "opacity"; from: 0; to: 1 }
    }
}
