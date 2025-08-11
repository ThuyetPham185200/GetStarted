// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.7
import GetStarted
import QtQuick.Controls 6.7
import  QtQuick.Studio.Components 1.0
import QtQuick.Studio.DesignEffects
import QtQuick.Layouts

ApplicationWindow {
    id: root
    width: 1920
    height: 1080
    flags: Qt.FramelessWindowHint
    visible: true
    color: "#3c3f41"
    title: "GetStarted"

    StackLayout {
        id: view
        anchors.fill: parent

        EntryView {
            mainWindow: root
            onSelected: _currentIndex =>  {
                view.currentIndex = 1
                main.mission = _currentIndex === 1 ? "S125" : "A1"
            }
        }

        MainView {
            id: main
            mainWindow: root
            Behavior on visible {
                NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
            }
        }
        // SelectView {
        //     id: main
        //     mainWindow: root
        // }

    }
}

