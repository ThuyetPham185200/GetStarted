

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import QtQuick.Controls 6.7
import QtQuick.Timeline 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.DesignEffects
import GetStarted

RectangleItem {
    id: root
    width: root.hovered ? listFeatures.count * 80 + 4 : listFeatures.count * 81 - 15
    height: /*root.hovered ? 110 :*/ 75
    visible: root.hovered

    Behavior on width {
        NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
    }
    Behavior on height {
        NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
    }
    Behavior on visible {
        NumberAnimation { duration: 1000; easing.type: Easing.InOutQuad }
    }
    layer.effect: mouseArea
    fillColor: "#73ffffff"
    strokeWidth: -1
    strokeColor: "#2B2D2F"
    adjustBorderRadius: true
    signal selected(int _currentIndex)
    property bool hovered: false
    ListModel {
        id: listFeatures
        ListElement {name: "Settings"; icon_: "icons/Settings.svg" ; descript: "Cấu hình camera (EO, IR), Track, System connect, Joystick, Track State"}
        ListElement {name: "Controller"; icon_: "icons/Controller1.svg"; descript: "Điều khiển chuyển động của hệ thống bằng bàn phím, joystick ảo"}
        ListElement {name: "Mission"; icon_: "icons/Mission.svg"; descript: "Cấu hình kết nối, điều khiển bắt bám mục tiêu"}
        ListElement {name: "Cablib"; icon_: "icons/Calib.svg"; descript: "Cấu hình, hiệu chỉnh các góc ban đầu của hệ thống chuyển động Pan & Tilt"}
        ListElement {name: "GPS Waypoints"; icon_: "icons/Waypoints.svg"; descript: "Tải waypoint, điều khiển di chuyển tới waypoint"}
        ListElement {name: "SRHawk Radar"; icon_: "icons/SRHawk.svg"; descript: "Kết nối, điều khiển, cấu hình SRHawk radar"}
        ListElement {name: "Range Finder"; icon_: "icons/RangeFinder.svg"; descript: "Xác định khoảng cách, vị trí mục tiêu bằng laser"}
        ListElement {name: "System Infomations"; icon_: "icons/SysInfor.svg"; descript: "Cung cấp toàn bộ thông tin của hệ thống"}
    }

    Row {
        spacing: 10
        anchors.left: parent.left
        anchors.leftMargin: 2
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin:2
        height: parent.height
        Repeater {
            model: listFeatures
            delegate: Rectangle {
                id: regularPolygon

                width: 70
                height: 70
                radius: 5
                opacity: 0.8
                color: "#2B2D2F"
                border.color: "#37B29A"
                Behavior on width {
                    NumberAnimation { duration: 50; easing.type: Easing.InOutQuad }
                }
                Behavior on height {
                    NumberAnimation { duration: 50; easing.type: Easing.InOutQuad }
                }

                Image {
                    id: symbol
                   anchors.horizontalCenter: parent.horizontalCenter
                   width:  40
                   height: width
                   anchors.top: parent.top
                   anchors.topMargin: 5
                   source: icon_
                }


                Text {
                    id: textInput
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: symbol.bottom
                    anchors.topMargin: 5
                    width: parent.width - 5
                    color: "#37B29A"
                    z: regularPolygon.z  + 1
                    elide: Qt.ElideRight
                    text: name
                    font.pixelSize: 11
                    //wrapMode: Text.WordWrap  // Changed wrapMode for proper text wrapping
                    horizontalAlignment: Text.AlignHCenter  // Horizontally align text in the center
                    verticalAlignment: Text.AlignVCenter    // Vertically align text in the center
                    font.family: Constants.font.family
                    Behavior on font.pixelSize {
                        NumberAnimation { duration: 50; easing.type: Easing.InOutQuad }
                    }
                }

                ToolTip {
                    id: id_toolTip
                    visible: mouseArea.containsMouse
                    x: mouseArea.mouseX + 10 // Adjust offset as needed
                    y: mouseArea.mouseY + 10 // Adjust offset as needed
                    contentItem: Label
                    {
                        width: 300
                        height: 50
                        text: name + ": " + descript // Set tooltip text directly
                        // font: rootItem.font
                        color: "#37B29A"
                        font.family: Constants.font.family
                        wrapMode: Text.Wrap
                    }

                    background: Rectangle {
                        color: "#2B2D2F"
                        opacity: 0.8
                        border.color: "#37B29A"
                    }

                    Behavior on visible {
                        NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
                    }
                }

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    enabled: true
                    // When the mouse enters the polygon
                    onEntered: {
                        root.hovered = true;
                        regularPolygon.width = 80// Increase width when hovering
                        regularPolygon.height = 80 // Increase height when hovering
                        symbol.width = 50
                        textInput.font.pixelSize = 13
                    }

                    // When the mouse exits the polygon
                    onExited: {
                        root.hovered = false;
                         symbol.width = 40
                        regularPolygon.width = 70 // Return to original width
                        regularPolygon.height = 70 // Return to original height
                        textInput.font.pixelSize = 11
                    }
                    onClicked: {
                        console.log("-- " + index)
                        selectItem(model.index)
                    }
                }
            }

        }
    }

    // JavaScript function for handling the selection
    function selectItem(index) {
        selected(index); // Emit the 'selected' signal with the correct index
    }
}
