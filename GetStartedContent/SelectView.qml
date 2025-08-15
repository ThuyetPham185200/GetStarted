import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
import QtQuick.Layouts

ApplicationWindow {
    id: root
    width: 1300
    height: 800
    visible: true
    minimumHeight: 800
    minimumWidth: 1300
    maximumHeight: 800
    maximumWidth: 1300
    title: "Cấu hình View"
    signal selected(int numView) // 2 3 4
    signal accepted(int index)
    property var mainWindow
    color: "white"
    property ViewControlStore viewControlStore

    property var fourView
    property var twoView
    property var threeView


    // QDTCustomTitleBar {
    //     id: statusBar
    //     mainWindow: root.mainWindow

    //     gradient: Gradient {
    //         GradientStop { position: 0.0; color: "#3C3F41" }  // Olive Drab
    //         GradientStop { position: 1.0; color: "#2B2D2F" }  // Darker Olive Drab
    //     }
    //     anchors.left: parent.left
    //     anchors.right: parent.right
    //     anchors.top: parent.top
    //     height: 40
    // }

    TwoItemView {
        x: 62
        y: 24
        onClicked: {
            view.currentIndex = 0
            dragFuncList.returnAscestor()
        }
    }

    ThreeItemView {
        x: 62
        y: 251
        width: 206
        height: 184
        onClicked: {
            view.currentIndex = 1
            dragFuncList.returnAscestor()
        }
    }

    FourItemView {
        x: 62
        y: 460

        onClicked: {
            view.currentIndex = 2
            dragFuncList.returnAscestor()
        }
    }

    Rectangle {
        id: rectangle
        x: 350
        y: 24

        color: Constants.transparentColor
        border.width: 1
        radius: 5
        border.color:"#2B2D2F"


    }

    StackLayout {
        id: view
        x: 506
        y: 69
        FourPreview {
            id: fourPreview
        }

        TwoPreview {
            id: twoPreview
        }
        ThreePreview {
            id: threePreview
        }
    }

    DragFuncList {
        id: dragFuncList
        height: 40
        x: 574
        y: 606
    }


    Row {
        spacing: 20
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.bottomMargin: 40
        anchors.rightMargin: 40

        CustomButton {
            text: "Cancel"
            onClicked: {
                dragFuncList.returnAscestor()
                root.close()}
        }

        CustomButton {
            text: "Accept"
            onClicked: {
                dragFuncList.returnAscestor()
                root.close()
                handle()
                root.accepted(view.currentIndex)
            }
        }
    }


    function handle() {
        if(view.currentIndex === 1) {
            if(twoPreview.dropItem0) {
                console.log("twoPreview.dropItem0 " + twoPreview.dropItem0.tileLabel)
                console.log("twoPreview.dropItem0 " + twoPreview.dropItem0.cak)
                viewControlStore.mapView[twoPreview.dropItem0.tileLabel].parent = twoView.listView[twoPreview.dropItem0.cak]
                twoView.viewControl.changeItem(0, twoPreview.dropItem0.tileLabel)
            }
            if(twoPreview.dropItem1) {
                console.log("twoPreview.dropItem1 " + twoPreview.dropItem1.tileLabel)
                console.log("twoPreview.dropItem1 " + twoPreview.dropItem1.cak)
                viewControlStore.mapView[twoPreview.dropItem1.tileLabel].parent = twoView.listView[twoPreview.dropItem1.cak]
                twoView.viewControl.changeItem(1, twoPreview.dropItem1.tileLabel)
            }
        } else if(view.currentIndex === 2) {
            console.log(threeView.listView)
            if(threePreview.dropItem0) {
                console.log("threePreview.dropItem0 " + threePreview.dropItem0.tileLabel)
                console.log("threePreview.dropItem0 " + threePreview.dropItem0.cak)

                viewControlStore.mapView[threePreview.dropItem0.tileLabel].parent = threeView.listView[threePreview.dropItem0.cak]
                threeView.viewControl.changeItem(0, threePreview.dropItem0.tileLabel)
            }
            if(threePreview.dropItem1) {
                console.log("threePreview.dropItem1 " + threePreview.dropItem1.tileLabel)
                console.log("threePreview.dropItem1 " + threePreview.dropItem1.cak)
                viewControlStore.mapView[threePreview.dropItem1.tileLabel].parent = threeView.listView[threePreview.dropItem1.cak]
                threeView.viewControl.changeItem(1, threePreview.dropItem1.tileLabel)

            }
            if(threePreview.dropItem2) {
                console.log("threePreview.dropItem2 " + threePreview.dropItem2.tileLabel)
                console.log("threePreview.dropItem2 " + threePreview.dropItem2.cak)
                viewControlStore.mapView[threePreview.dropItem2.tileLabel].parent = threeView.listView[threePreview.dropItem2.cak]
                threeView.viewControl.changeItem(2, threePreview.dropItem2.tileLabel)

            }
        }  else if(view.currentIndex === 0) {
            if(fourPreview.dropItem0) {
                console.log("fourPreview.dropItem0 " + fourPreview.dropItem0.tileLabel)
                console.log("fourPreview.dropItem0 " + fourPreview.dropItem0.cak)

                viewControlStore.mapView[fourPreview.dropItem0.tileLabel].parent = fourView.listView[fourPreview.dropItem0.cak]
                fourView.viewControl.changeItem(0, fourPreview.dropItem0.tileLabel)

            }
            if(fourPreview.dropItem1) {
                console.log("fourPreview.dropItem1 " + fourPreview.dropItem1.tileLabel)
                console.log("fourPreview.dropItem1 " + fourPreview.dropItem1.cak)
                viewControlStore.mapView[fourPreview.dropItem1.tileLabel].parent = fourView.listView[fourPreview.dropItem2.cak]
                fourView.viewControl.changeItem(1, fourPreview.dropItem1.tileLabel)
            }
            if(fourPreview.dropItem2) {
                console.log("fourPreview.dropItem2 " + fourPreview.dropItem2.tileLabel)
                console.log("fourPreview.dropItem2 " + fourPreview.dropItem2.cak)
                viewControlStore.mapView[fourPreview.dropItem2.tileLabel].parent = fourView.listView[fourPreview.dropItem1.cak]
                fourView.viewControl.changeItem(2, fourPreview.dropItem2.tileLabel)

            }
            if(fourPreview.dropItem3) {
                console.log("fourPreview.dropItem3 " + fourPreview.dropItem3.tileLabel)
                console.log("fourPreview.dropItem3 " + fourPreview.dropItem3.cak)
                viewControlStore.mapView[fourPreview.dropItem3.tileLabel].parent = fourView.listView[fourPreview.dropItem3.cak]
                fourView.viewControl.changeItem(3, fourPreview.dropItem3.tileLabel)
            }

        }

    }

}
