import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: main
    property ViewControlStore viewControlStore
    property var listView: [zeroView, oneView]
    property var zeroView: zeroView
    property var oneView: oneView
    property var viewControl: viewControl

    Component.onCompleted: {
        viewControlStore.mapViewComponent.parent = zeroView
        viewControlStore.eoViewComponent.parent = oneView

    }
    Item {
        id: zeroView
        property var mainItem: mapViewComponent

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.right: verBorder.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5

        anchors.topMargin: 5
        anchors.leftMargin: 5

        Behavior on anchors.right {
            NumberAnimation { duration: 300 }
        }

        Behavior on anchors.bottom {
            NumberAnimation { duration: 300 }
        }
    }




    VerticalBorder {
        id: verBorder
        width: 5
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        Behavior on x {
            NumberAnimation { duration: 300 }

        }
    }

    Item {
        id: oneView

        anchors.right: parent.right
        anchors.left: verBorder.right
        anchors.top: parent.top
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





    TwoViewControl {
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
                        //oneView.item =  mapView[icon.text_]
                        repositionView(oneView, viewControlStore.mapView[icon.text_])
                        break;
                }
            }
        }
    }
}
