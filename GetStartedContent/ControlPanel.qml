

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

Rectangle {
    id: root
    width: 75
    height: 80 * listFeatures.count

    color: "transparent"

    Behavior on width {
        NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
    }
    Behavior on height {
        NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
    }
    Behavior on visible {
        NumberAnimation { duration: 1000; easing.type: Easing.InOutQuad }
    }

    signal selected(int _currentIndex)
    property bool hovered: false
    ListModel {
        id: listFeatures
        ListElement {name: "Thiết bị"; icon_: "icons/Settings.svg" ; descript: "Cấu hình camera (EO, IR), Track, System connect, Joystick, Track State"}
        ListElement {name: "TT Hiển thị"; icon_: "icons/TTDisplay.svg"; descript: "Điều khiển chuyển động của hệ thống bằng bàn phím, joystick ảo"}
        ListElement {name: "Joystick"; icon_: "icons/Controller.svg"; descript: "Cấu hình kết nối, điều khiển bắt bám mục tiêu"}
        ListElement {name: "Điều khiển"; icon_: "icons/controller_config.svg"; descript: "Cấu hình, hiệu chỉnh các góc ban đầu của hệ thống chuyển động Pan & Tilt"}
        ListElement {name: "Bắt bám"; icon_: "icons/Tracking.svg"; descript: "Cấu hình kết nối, điều khiển bắt bám mục tiêu"}
        ListElement {name: "ĐTQS"; icon_: "icons/Mission.svg"; descript: "Cấu hình kết nối, điều khiển bắt bám mục tiêu"}
        ListElement {name: "Hiểu chuẩn"; icon_: "icons/Calib.svg"; descript: "Hiểu chuẩn tọa độ GPS, góc roll pitch yaw của thiết bị"}
        ListElement {name: "Mốc GPS"; icon_: "icons/Waypoints.svg"; descript: "Cung cấp toàn bộ thông tin của hệ thống"}
        ListElement {name: "Phát video"; icon_: "icons/Forwarding.svg"; descript: "Cung cấp toàn bộ thông tin của hệ thống"}
        ListElement {name: "Cài đặt"; icon_: "icons/SysInfor.svg"; descript: "Cung cấp toàn bộ thông tin của hệ thống"}
        ListElement {name: "CH View"; icon_: "icons/download.svg"; descript: "Tùy chỉnh mainview"}
    }

    Column {
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
                border.color:  "#37B29A"
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
                        regularPolygon.color = "white"
                    }

                    // When the mouse exits the polygon
                    onExited: {
                        root.hovered = false;
                        regularPolygon.color = "#2B2D2F"
                    }
                    onClicked: {
                        root.selected(model.index)
                        console.log("=================================== ")

                    }
                }
            }

        }
    }



    // JavaScript function for handling the selection
    function selectItem(index) {
        root.selected(index); // Emit the 'selected' signal with the correct index
    }
}
