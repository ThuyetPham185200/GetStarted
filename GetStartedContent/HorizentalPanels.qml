import QtQuick 2.15
import QtQuick.Controls 2.15


Item {
    id: root
    height: 510
    property int m_currentIndex: -1
    property var listPanels: []
    property int minX: root.width
    onM_currentIndexChanged: {
        if(!listPanels[root.m_currentIndex].visible) {
            if(root.minX > 350) root.minX = root.minX - 350
            console.log(root.minX)
            listPanels[root.m_currentIndex].x = root.minX
            listPanels[root.m_currentIndex].visible = true
        }
    }

    Component.onCompleted: {
        listPanels.push(verticalSettings)
        listPanels.push(verticalController)
        listPanels.push(verticalMission)
        listPanels.push(verticalCalib)
    }

    VerticalPanel {
        id: verticalSettings
        //x: root.width - verticalSettings.width - 5
        visible: false
        anchors.bottom: root.bottom
        m_parent: root
        z: root.z + 1
        VerticalSettings {
            z: verticalSettings.z + 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.right: parent.right
            height: 500
        }
        //onClosed: listPanels[0].visible = false
    }


    VerticalPanel {
        id: verticalController
        //x: root.width - verticalSettings.width - 5
        visible: false
        anchors.bottom: root.bottom
        m_parent: root
        z: root.z + 1
        VerticalController {
            z: verticalController.z + 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.right: parent.right
            height: 500
        }
        //onClosed: listPanels[1].visible = false
    }

    VerticalPanel {
        id: verticalMission
        //x: root.width - verticalSettings.width - 5
        visible: false
        anchors.bottom: root.bottom
        m_parent: root
        z: root.z + 1
        VerticalMission {
            z: verticalMission.z + 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.right: parent.right
            height: 500
        }
        //onClosed: listPanels[2].visible = false
    }

    VerticalPanel {
        id: verticalCalib
        //x: root.width - verticalSettings.width - 5
        visible: false
        anchors.bottom: root.bottom
        m_parent: root
        z: root.z + 1
        VerticalSettings {
            z: verticalCalib.z + 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.right: parent.right
            height: 500
        }
        //onClosed: listPanels[3].visible = false
    }
}
