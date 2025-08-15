// Copyright (C) 2019 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick 2.12
import QtQuick.Controls 2.12
import GetStarted


Item {
    id: slider
    property string bColor: UIConstants.genBorderColor
    width: 290
    height: 10
    property int timeReturn: 300
    signal ratio_(real val) // -1 <-> 1

    Rectangle {
        anchors.fill: parent
        color: UIConstants.transparentColor
        radius: height / 2
        Rectangle {
            anchors.fill: parent
            color: slider.bColor
            radius: height / 2
            opacity: 0.3
        }
        // Candidate
        Rectangle {
            id: candidate
            width: height
            height: slider.height * 1.5
            radius: width / 2
            color:slider.bColor
            anchors.verticalCenter: parent.verticalCenter
            x: slider.width / 2 - width / 2
            property bool isInit: true

            onXChanged:  {
                if (!isInit) {
                    // Calculate ratio from -1 to 1
                    let minX = 0;
                    let maxX = slider.width - candidate.width;
                    let normalizedX = (x - minX) / (maxX - minX); // Normalized range 0 to 1
                    slider.ratio_(normalizedX * 2 - 1); // Scale to -1 to 1
                }
                isInit = false;
            }

            Behavior on x {
                NumberAnimation {
                    duration: slider.timeReturn
                    easing.type: Easing.OutQuad
                }
            }

            MouseArea {
                anchors.fill: parent
                drag.target: candidate
                drag.axis: Drag.XAxis
                drag.minimumX: 0
                drag.maximumX: slider.width - candidate.width
                onPressed: candidate.opacity = 0.7
                onReleased: {
                    // Move back to center
                    candidate.opacity = 1.0
                    candidate.x = (slider.width - candidate.width) / 2;
                }
            }
        }
    }
}
