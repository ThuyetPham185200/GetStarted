// Copyright (C) 2019 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick
import GetStarted

Rectangle {
    id: icon
    required property Item dragParent

    property int visualIndex: 0
    property string text_: "Item"
    anchors {
        horizontalCenter: parent.horizontalCenter
        verticalCenter: parent.verticalCenter
    }
    radius: 3

    Text {
        z: icon.z + 1
        anchors.centerIn: parent
        text: parent.text_
        color: "#37B29A"
        font.family: Constants.font.family
    }

    DragHandler {
        id: dragHandler
    }

    Drag.active: dragHandler.active
    Drag.source: icon
    Drag.hotSpot.x: 36
    Drag.hotSpot.y: 36

    states: [
        State {
            when: dragHandler.active
            ParentChange {
                target: icon
                parent: icon.dragParent
            }

            AnchorChanges {
                target: icon
                anchors {
                    horizontalCenter: undefined
                    verticalCenter: undefined
                }
            }
        }
    ]

}
