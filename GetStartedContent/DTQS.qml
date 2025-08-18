import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
import QtQuick.Layouts

ApplicationWindow {
    id: root
    visible: true
    title: "Đối tượng quan sát"
    width: dd.width
    height: dd.height
    minimumHeight: dd.height
    minimumWidth: dd.width
    maximumHeight: dd.height
    maximumWidth: dd.width
    Image {
        id: dd
        source: "images/dtqs.png"
        fillMode: Image.PreserveAspectFit
    }
}
