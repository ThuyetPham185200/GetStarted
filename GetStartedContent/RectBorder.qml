import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    property string type: "line" // stand
    property alias length:root.width
    height: 1
    rotation: type_(type)
    function type_(type) {
        if(type === "line") {
            return 0
        } else if(type === "stand") {
            return 90
        }
        return 0
    }
}

