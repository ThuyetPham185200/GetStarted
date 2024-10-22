// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.7
import GetStarted
import QtQuick.Controls 6.7
import  QtQuick.Studio.Components 1.0
import QtQuick.Studio.DesignEffects
import QtQuick.Layouts

Window {
    id: root
    width: 1920
    height: 1080

    visible: true
    color: "#3c3f41"
    title: "GetStarted"

    StackLayout {
        id: view
        anchors.fill: parent

        EntryView {
            onSelected: _currentIndex =>  {
                view.currentIndex = 1
                main.mission = _currentIndex === 1 ? "S125" : "A1"
            }
        }

        MainView {
            id: main
            Behavior on visible {
                NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
            }
        }

    }
}

