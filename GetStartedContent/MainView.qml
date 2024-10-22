import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.DesignEffects
import GetStarted

Rectangle {
    id: root
    anchors.fill: parent
    property string mission: "A1"
    property var mapView : ({})
    Rectangle {
        id: statusBar
        //border.color: "green"
        // Gradient background
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#3C3F41" }  // Olive Drab
            GradientStop { position: 1.0; color: "#2B2D2F" }  // Darker Olive Drab
        }


        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 40

        // Image {
        //     id: alert
        //     width: height
        //     height: 0.6 * parent.height
        //     anchors.right: parent.right
        //     anchors.verticalCenter: parent.verticalCenter
        //     anchors.rightMargin: 50
        //     source: "images/alert(1).png"
        // }

        RightToLeftButton {
            id: alert
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            //anchors.verticalCenterOffset: 10
            anchors.rightMargin: 50
            iconSrc: "images/alert(1).png"
            title: "Notification"
            to: 120
        }

        RightToLeftButton {
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: alert.left
            anchors.rightMargin: 5
            iconSrc: "images/signal(1).png"
            title: "Ping status"
             //anchors.verticalCenterOffset: 10
             onSelected: systemPings.visible = !systemPings.visible
             to: 120
        }

        // PingStatus {
        //     anchors.verticalCenter: parent.verticalCenter
        //     anchors.verticalCenterOffset: 3
        //     anchors.right: alert.left
        //     anchors.rightMargin: 50
        //     height: 2 * parent.height / 3
        //     width: 400
        // }

        Rectangle {
            id: toot
            anchors.centerIn: parent
            height: 2 * parent.height / 3
            width: toot.hovered ? 97 : 50
            border.color: "#37B29A"
            border.width: 1
            radius: 10
            Behavior on width {
                NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
            }
            property bool hovered: false

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                enabled: true
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onEntered: {
                    toot.hovered = true;
                    controlPanel.hovered = true
                    toot.opacity = 0.7;
                }
                onExited: {
                    toot.hovered = false;
                    controlPanel.hovered = false
                    toot.opacity = 1.0;
                }
                onClicked: toot.opacity = 0.4
                onReleased: {
                      //popup.close()
                      toot.opacity = 1.0;
                  }
            }

            Image {
                id: icon
                // Center the icon initially and move it left on hover
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: toot.hovered ? -parent.width / 3 : 0
                source: "images/eagle(7).png"
                height: 4 * parent.height / 5
                width: height
                Behavior on anchors.horizontalCenterOffset {
                    NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
                }
            }

            Text {
                id: txt
                // Text is initially hidden and appears when hovered
                anchors.left: icon.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 4
                text: "SkyView"
                color: "#228b22"
                visible: toot.hovered  // Text appears only when hovered
                font.family: Constants.font.family
                Behavior on visible {
                    NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
                }
            }

            DesignEffect {
                visible: true
                effects: [
                    DesignDropShadow {
                        color: "#228b22"
                    }
                ]
            }
        }



        // SystemStatus {
        //     id: systemStatus
        //     anchors.verticalCenter: parent.verticalCenter
        //     anchors.left: parent.left
        //     anchors.leftMargin: 50
        //     onGotoSelect: {
        //         gotoPos.visible = !gotoPos.visible
        //     }
        // }

        RightToLeftButton {
            id: azEl
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20
            onSelected:  gotoPos.visible = !gotoPos.visible
            //anchors.verticalCenterOffset: 10
            iconWidth: 30
            iconHeight: 30
            to: 100
        }



        RightToLeftButton {
            id: fovFocus
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: azEl.right
            anchors.leftMargin: 5
            iconSrc:"icons/export/FOV.svg"
            title: "(Fov,Focus)"
            onSelected: fovFocusContent.visible = !fovFocusContent.visible
            //anchors.verticalCenterOffset: 10
            iconWidth: 30
            iconHeight: 30
            to: 130
        }
    }

    Component.onCompleted:  {
        mapView["Map"] = mapViewComponent
        mapView["EO"] = eoViewComponent
        mapView["IR"] = irViewComponent
    }

    Item {
        id: zeroView
        property var mainItem: mapViewComponent

        anchors.left: parent.left
        anchors.top: statusBar.bottom
        anchors.right: verBorder.left
        anchors.bottom: horBorder.top

        anchors.topMargin: 5
        anchors.leftMargin: 5

        Behavior on anchors.right {
            NumberAnimation { duration: 300 }
        }

        Behavior on anchors.bottom {
            NumberAnimation { duration: 300 }
        }
    }

    MapView {
        id: mapViewComponent
        Component.onCompleted: {
            mapViewComponent.parent = zeroView
        }
        onParentChanged: animation.running = true
        NumberAnimation {
            id: animation
            target: mapViewComponent.parent
            property: "opacity"
            from: 0.7
            to: 1
            duration: 1000
            easing.type: Easing.InExpo
        }
    }



    HorizentalBorder {
        id: horBorder
        anchors.left: parent.left
        anchors.right: verBorder.left
        height: 5
        Behavior on anchors.right {
            NumberAnimation { duration: 300 }
        }

    }

    Item {
        id: oneView
        property var mainItem: eoViewComponent

        anchors.left: parent.left
        anchors.right: verBorder.left
        anchors.top: horBorder.bottom
        anchors.bottom: parent.bottom

        anchors.leftMargin: 5
        anchors.bottomMargin: 5

        Behavior on anchors.right {
            NumberAnimation { duration: 300 }
        }

        Behavior on anchors.top {
            NumberAnimation { duration: 300 }
        }

    }

    EOView {
        id: eoViewComponent
        // Content of EOView
        Component.onCompleted: {
            eoViewComponent.parent = oneView
        }
        onParentChanged: animation1.running = true
        NumberAnimation {
            id: animation1
            target: eoViewComponent.parent
            property: "opacity"
            from: 0.7
            to: 1
            duration: 1000
            easing.type: Easing.InExpo
        }
    }


    VerticalBorder {
        id: verBorder
        width: 5
        anchors.top: statusBar.bottom
        anchors.bottom: parent.bottom
        Behavior on x {
            NumberAnimation { duration: 300 }

        }
    }

    Item {
        id: twoView
        property var mainItem: irViewComponent

        anchors.right: parent.right
        anchors.left: verBorder.right
        anchors.top: statusBar.bottom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.rightMargin: 5
        anchors.topMargin: 5
        // Removed topMargin, it's redundant since you're already using anchors.top

        Behavior on anchors.left {
            NumberAnimation { duration: 300 }
        }

        Behavior on anchors.bottom {
            NumberAnimation { duration: 300 }
        }


    }

    IRView {
        id: irViewComponent
        Component.onCompleted: {
            irViewComponent.parent = twoView
        }
        onParentChanged: animation2.running = true
        NumberAnimation {
            id: animation2
            target: irViewComponent.parent
            property: "opacity"
            from: 0.7
            to: 1
            duration: 1000
            easing.type: Easing.InExpo
        }
    }

    ControlPanel {
        id: controlPanel
        anchors.top: statusBar.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        z: conf.z  + 1
         onSelected: _currentIndex =>  {
            // conf.visible = true
            // conf.contentVis = true
            // //controlPanel.visible = false
            // conf.currentIndex = currentIndex
            horizeltalPanel.m_currentIndex = _currentIndex;

        }
    }


    Configuration {
        id: conf
        anchors.top: statusBar.bottom
        x: parent.width / 2 - conf.width / 2
        visible: false
        MouseArea {
            anchors.fill: parent
            property int startX: 0
            property int startMouseX: 0
            cursorShape: Qt.PointingHandCursor


            onPressed: {
                startX = conf.x
                startMouseX = mouseX
            }

            onPositionChanged: {
                if (pressed) {
                    var dx = mouseX - startMouseX
                    var newX = startX + dx
                    if(newX >= 0  && newX <  root.width - conf.width) {
                        conf.x = newX
                    }

                }
            }

            onDoubleClicked: {
                conf.contentVis = !conf.contentVis

            }
        }
    }




    ViewControl {
        id: viewContr
        anchors.top: statusBar.bottom
        x: parent.width - 180

        function repositionView(sourceView, mainItem) {
            if(mainItem.parent !== sourceView )
               mainItem.parent = sourceView
        }
        onViewChanged: {
            for (var i = 0; i < iconList.length; i++) {
                var icon = iconList[i];
                switch (icon.visualIndex) {
                    case 0:
                        //zeroView.item =  mapView[icon.text_]
                        repositionView(zeroView, mapView[icon.text_])
                        break;
                    case 1:
                        //twoView.item =  mapView[icon.text_]
                        repositionView(twoView, mapView[icon.text_])
                        break;
                    case 2:
                        //oneView.item =  mapView[icon.text_]
                        repositionView(oneView, mapView[icon.text_])
                        break;
                }
            }
        }
    }

    HorizentalPanels {
        id: horizeltalPanel
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: root.bottom
    }



    GotoPos {
        id: gotoPos
        visible: false
        anchors.top: statusBar.bottom
        x: 20
        anchors.topMargin:  10
    }

    FOVFocus {
        id: fovFocusContent
        visible: false
        anchors.top: statusBar.bottom
        x: 350
        anchors.topMargin:  10
    }

    PingStatus {
        id: systemPings
        visible: false
        anchors.top: statusBar.bottom
        anchors.right: parent.right
        anchors.rightMargin: 200
        anchors.topMargin:  10
    }
}
