import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.DesignEffects
import GetStarted
import QtQuick.Layouts

Rectangle {
    id: root
    anchors.fill: parent
    property string mission: "A1"

    property var mainWindow
    property var listView: []
    QDTCustomTitleBar {
        id: statusBar
        z: main.z  + 3
        mainWindow: root.mainWindow
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#3C3F41" }  // Olive Drab
            GradientStop { position: 1.0; color: "#2B2D2F" }  // Darker Olive Drab
        }

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 40

        ComboboxStyle {
            id: irMode
            z: statusBar.z  + 1
            x: 300
            y : 5
            title: "Ngày"
            onClicked: {
                zoomMode.hidden()
            }
        }

        ComboboxStyle {
            id: zoomMode
            z: statusBar.z  + 1
            x: 400
            y : 5
            title: "Zoom"
            onClicked: {
                irMode.hidden()
            }
        }
    }

    Item {
        id: menu
        anchors.left: parent.left
        width: 80
        anchors.bottom: parent.bottom
        anchors.top: statusBar.bottom
        Rectangle {
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#3C3F41" }  // Olive Drab
                GradientStop { position: 1.0; color: "#2B2D2F" }  // Darker Olive Drab
            }

            //strokeColor: "#2B2D2F"
            ViewControlStore {
                id: viewControlStore_

            }
            ControlPanel {
                id: panels
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 5

                Connections {
                    target:panels
                    function onSelected(_currentIndex) {
                        // for (var i = 0; i < root.listView.length; i ++) {
                        //     root.listView[i].visible = false
                        // }
                        root.listView[_currentIndex].visible = true
                    }
                }

                // onSelected: {
                // }
            }
        }

    }
    Component.onCompleted:  {
        root.listView.push(ctrlDevice)
        root.listView.push(selectView)

    }

    ControlDevice {
        visible: false
        id: ctrlDevice
    }

    SelectView {
        id: selectView
        visible: false
        twoView: twoView_
        threeView: threeView_
        fourView: fourView_
        viewControlStore: viewControlStore_
        Connections {
            target: selectView
            function onAccepted(idx) {
                main.currentIndex = idx
            }
        }
    }

    Item {
        id: cak
        anchors.top: statusBar.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: config.width === 0 ? 0 : 200
        anchors.left: menu.right
        anchors.right: config.left
        anchors.bottom: parent.bottom

        StackLayout {
            id: main
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            FourView {
                id: fourView_
                viewControlStore: viewControlStore_
            }

            TwoView {
                id: twoView_
                viewControlStore: viewControlStore_
            }
            ThreeView {
                id: threeView_
                viewControlStore: viewControlStore_
            }

        }

    }


    Item {
        id: config
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: statusBar.bottom
        width: 0

        Rectangle {
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            color: "Black"
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#3C3F41" }  // Olive Drab
                GradientStop { position: 1.0; color: "#2B2D2F" }  // Darker Olive Drab
            }

            Image {
                id: toot1
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                width: 31
                height: 25
                z: config.z + 1
                rotation: 270
                source: "icons/chevron_1.svg"
                fillMode: Image.PreserveAspectFit
                visible: !toot.visible
                MouseArea {
                    id: mouseArea1
                    anchors.fill: parent
                    enabled: true
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onEntered: {
                        toot1.opacity = 0.7;
                    }
                    onExited: {
                        toot1.opacity = 1.0;
                    }
                    onClicked: {
                        toot1.opacity = 0.4
                        config.width = 0
                        toot.visible = true
                    }
                    onReleased: {
                          //popup.close()

                          toot1.opacity = 1.0;
                    }
                }
            }

            ////////////////////////////////////

        }

    }

    Item {
        id: config1
        anchors.right: config.left
        anchors.bottom: parent.bottom
        anchors.top: cak.bottom
        anchors.left: menu.right
        Rectangle {
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            color: "Black"
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#3C3F41" }  // Olive Drab
                GradientStop { position: 1.0; color: "#2B2D2F" }  // Darker Olive Drab
            }
        }
    }
}
