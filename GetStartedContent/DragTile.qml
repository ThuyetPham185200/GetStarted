import QtQuick.Window 2.2
import QtQuick.Controls 2.12
import GetStarted

// Copyright (C) 2017 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick 2.12

//! [0]
Item {
    id: root

    required property string colorKey
    required property string tileLabel   // ✅ PHẢI có dòng này
    required property int index

    property Item originalParent: root
    property int originalWidth: 120
    property int originalHeight: 64
    property Item homeContainer

    width: originalWidth
    height: originalHeight

    function returnAscestor() {
        var item = mouseArea
        item.anchors.fill = undefined
        item.parent = originalParent
        item.width = originalWidth
        item.height = originalHeight
        tile.width = item.width
        tile.height = item.height
        item.anchors.horizontalCenter = item.parent.horizontalCenter
        item.anchors.verticalCenter = item.parent.verticalCenter
        console.log("Out of target 1")
    }

    MouseArea {
        id: mouseArea

        width: originalWidth
        height: originalHeight
        anchors.centerIn: parent
        Drag.proposedAction: Qt.MoveAction   // ✅ BẮT BUỘC phải có dòng này!

        drag.target: tile
        onReleased: {
            if (tile.Drag.target && tile.Drag.target !== originalParent) {
                //tile.Drag.target.cak = root.index   // Gán cak
                tile.Drag.target.tileLabel = root.tileLabel
                parent = tile.Drag.target
                console.log(">>>>" + tile.Drag.target.cak)
                anchors.fill = parent
                anchors.horizontalCenter = undefined
                anchors.verticalCenter = undefined

                width = tile.parent.width
                height = tile.parent.height
                tile.width = tile.parent.width
                tile.height = tile.parent.height

            } else {
                // ❗ Gán lại cak = -1 trước khi xoá target
                if (tile.Drag.target) {
                    tile.Drag.target.cak = -1
                    //tile.Drag.target.tileLabel = ""

                }

                parent = originalParent

                anchors.fill = undefined
                anchors.horizontalCenter = parent.horizontalCenter
                anchors.verticalCenter = parent.verticalCenter

                width = originalWidth
                height = originalHeight
                tile.width = width
                tile.height = height

                // ✅ Quan trọng
                tile.Drag.target = null
            }
        }





        Rectangle {
            id: tile

            width: originalWidth
            height: originalHeight
            anchors {
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }

            Drag.keys: [ root.colorKey ]
            Drag.active: mouseArea.drag.active
            Drag.hotSpot.x: originalWidth/2
            Drag.hotSpot.y: originalHeight/2

            Drag.source: root        // ✅ Optional nhưng nên có
            Drag.proposedAction: Qt.MoveAction   // ✅ BẮT BUỘC phải có dòng này!
//! [0]     color:
            color: colorKey
            Text {
                anchors.fill: parent
                color: "white"
                font.pixelSize: 35
                font.family: Constants.font.family
                text: root.tileLabel
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
//! [1]
            states: State {
                when: mouseArea.drag.active
                AnchorChanges {
                    target: tile
                    anchors {
                        verticalCenter: undefined
                        horizontalCenter: undefined
                    }
                }
            }
        }
    }
}
//! [1]

