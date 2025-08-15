import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted


Item {
    id: root
    width: 34
    height: 34
    property string bColor: UIConstants.genBorderColor
    property alias src : icon.source
    property int _rotation

    Image {
        id: icon
        anchors.centerIn: parent
        source: "qrc:/icons/EO.svg"
        //antialiasing: true
        //transform: Rotation { id: rotation; angle: _rotation }
        opacity: 0
        width: root.width
        height: root.height
    }


}
