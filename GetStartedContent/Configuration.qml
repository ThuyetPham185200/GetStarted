import QtQuick 2.15
import QtQuick.Controls 2.15
import  QtQuick.Studio.Components 1.0
import QtQuick.Layouts
import GetStarted

Rectangle {
    id: root
    width: 700
    height: 350
    color: "transparent"
    property alias contentVis: content.visible
    property alias currentIndex: stackLayout.currentIndex
    onContentVisChanged:  {
        if(!contentVis) {
            root.height = triangle.height
        } else root.height = 350
    }
    TriangleItem {
        id: triangle
        anchors.top: root.top
        x: parent.width/2 - 10
        width: 20
        height: 10
        radius: 0
        fillColor:"#228b22"
        strokeColor: "#228b22"
        rotation: 180
        strokeWidth: -1
    }

    Rectangle {
        id: content
        visible: true
        radius: 10
        z: root.z + 1
        width: parent.width
        anchors.top: triangle.bottom
        anchors.bottom: parent.bottom
        color: "#2B2D2F"
        opacity: 0.7

        StackLayout {
            id: stackLayout
            z: content.z  + 1
            anchors.fill: parent
            Settings {}
            Controller {}
            Mission {}
            Calibration {}
            GPSWaypoints {}
            SRHawkRadar {}
            RangeFinder {}
            InformationSystem {}
        }


    }
}
