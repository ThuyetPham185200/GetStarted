import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted

Rectangle {
    id: root
    width: parent.width
    height: parent.height
    property string name: "EO"
    radius: 5
    color: "#3C3F41"
    border.color: "#4DC7F1"
    Label {
        id: eo
        color: "#37B29A"
        text:  String(root)
        anchors.centerIn: parent
        font.family: Constants.font.family
    }
    states: State {
        name: "loaded"
        PropertyChanges { target: root; opacity: 1 }
    }

    transitions: Transition {
        NumberAnimation { duration: 2000; property: "opacity"; from: 0; to: 1 }
    }
}
