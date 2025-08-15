import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: main
    property ViewControlStore viewControlStore
    property var listView: [zeroView, oneView, twoView, threeView]

    property var zeroView: zeroView
    property var oneView: oneView
    property var twoView: twoView
    property var threeView: threeView

    property var viewControl: viewControl

    Component.onCompleted: {
        viewControlStore.mapViewComponent.parent = zeroView
        viewControlStore.controlViewComponent.parent = oneView
        viewControlStore.irViewComponent.parent = twoView
        viewControlStore.eoViewComponent.parent = threeView
    }
    Item {
        id: zeroView

        anchors.left: parent.left
        anchors.top: parent.top
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


    VerticalBorder {
        id: verBorder
        width: 5
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        x: 700
        Behavior on x {
            NumberAnimation { duration: 300 }

        }
    }


    HorizentalBorder {
        id: horBorder1
        anchors.left: verBorder.right
        anchors.right: parent.right
        y: 700
        height: 5
        Behavior on anchors.right {
            NumberAnimation { duration: 300 }
        }

    }

    Item {
        id: twoView

        anchors.right: parent.right
        anchors.left: verBorder.right
        anchors.top: parent.top
        anchors.bottom: horBorder1.top
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

    Item {
        id: threeView

        anchors.right: parent.right
        anchors.left: verBorder.right
        anchors.top: horBorder1.bottom
        anchors.bottom:parent.bottom
        anchors.bottomMargin: 5
        anchors.rightMargin: 5
        // Removed topMargin, it's redundant since you're already using anchors.top

        Behavior on anchors.left {
            NumberAnimation { duration: 300 }
        }

        Behavior on anchors.bottom {
            NumberAnimation { duration: 300 }
        }


    }




    FourViewControl {
        id: viewControl
        anchors.top: parent.top
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
                        repositionView(zeroView, viewControlStore.mapView[icon.text_])
                        break;
                    case 1:
                        //twoView.item =  mapView[icon.text_]
                        repositionView(twoView, viewControlStore.mapView[icon.text_])
                        break;
                    case 2:
                        //oneView.item =  mapView[icon.text_]
                        repositionView(oneView, viewControlStore.mapView[icon.text_])
                        break;
                    case 3:
                        //oneView.item =  mapView[icon.text_]
                        repositionView(threeView, viewControlStore.mapView[icon.text_])
                        break;
                }
            }
        }
    }
}
