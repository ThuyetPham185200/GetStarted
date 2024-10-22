import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.8
import GetStarted
Rectangle {
    id: root
    //anchors.fill: parent
    width: 1920
    height: 1080
    signal selected(int currentIndex)

    gradient: Gradient {
        GradientStop { position: 0.0; color: "#3C3F41" }  // Olive Drab
        GradientStop { position: 1.0; color: "#2B2D2F" }  // Darker Olive Drab
    }

    // Image of the eagle
    IconButton {
        id: eagle
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 150
        width: 570
        height: 544
        iconWidth: 500
        iconSrc: "images/eagle(7).png"
        title: "SkyView"
        titleSize: 30
    }


    IconButton {
        id: alert
        x: 1650
        y: 0
        iconSrc: "images/alert(1).png"
        title: "Notification"
    }

    Rectangle {
        id: nigthHawk
        border.color: "#37B29A"
        color: "transparent"
        width: 187
        height: 80
        radius: 2
        visible: false
        x: 35
        y: 67

        Text {
            x: 13
            y: 17
            color: "#37B29A"
            font.family: Constants.font.family
            text: qsTr("192.168.150.92:2233")
        }

        ComboBox_ {
            id: comboBox_
            x: 13
            y: 47
            model: ["TCP", "UDP"]
        }
    }
    IconButton {
        x: 30
        y: 0
        iconSrc: "images/signal(1).png"
        title: "192.168.150.92:2233"
        onSelected: {
            nigthHawk.visible = !nigthHawk.visible
        }
    }



    IconButton {
        id: iconButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: eagle.bottom
        anchors.topMargin: 150
        iconWidth: 70
        onSelected: {
            time.start()
        }
        Behavior on visible {
            NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
        }
    }

    Timer {
        id: time
        interval: 200
        running: false
        repeat: false
        onTriggered: {
            rect2.visible = true
            rect1.visible = true
            canvas1.gradientOpacity = 0.3;
            canvas2.gradientOpacity = 0.3;
            canvas1.requestPaint()
            canvas2.requestPaint()
            txtStart.visible = true
            txtStart2.visible = true
            iconButton.visible = false
        }
    }
    Rectangle {
        id: rect1
        visible: false
        anchors { horizontalCenter: parent.horizontalCenter
                    horizontalCenterOffset: 500
                  top: eagle.bottom; topMargin: 120}
        width: parent.width / 3
        height: 60
        color: "transparent"

        Canvas {
            id: canvas1
            anchors.fill: parent
            property real gradientOpacity: 0.0
            //Component.onCompleted: canvas1.requestPaint()
            onPaint: {
                var ctx = getContext("2d");
                ctx.clearRect(0, 0, canvas1.width, canvas1.height);
                if (gradientOpacity > 0) {
                    var gradient = ctx.createLinearGradient(0, 0, canvas1.width, canvas1.height);
                    gradient.addColorStop(0, "#37B29A");
                    gradient.addColorStop(1, "transparent");
                    ctx.fillStyle = gradient;
                    ctx.globalAlpha = gradientOpacity;
                    ctx.fillRect(0, 0, canvas1.width, canvas1.height);
                }
            }
        }

        Text {
            id: txtStart
            anchors { left: parent.left; leftMargin: 10 + parent.width/10;
                      verticalCenter: parent.verticalCenter}
            font {pixelSize: 30}
            color: "white"
            text: qsTr("A1")
            font.family: Constants.font.family
            opacity: 0.5
            visible: false
            Behavior on visible {
                NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
            }
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                selected(0)
            }
            onEntered: {
                txtStart.font.bold = true
                //txtInfo.text = qsTr("Select scene and customize settings")

                canvas1.gradientOpacity = 1.0;
                canvas1.requestPaint();
                canvas1.visible = true

                txtStart.opacity = 1
            }
            onExited: {
                txtStart.font.bold = false
                //txtInfo.text = ""

                canvas1.gradientOpacity = 0.3;
                canvas1.requestPaint();

                txtStart.opacity = 0.5
            }
        }
    }

    Rectangle {
        id: rect2
        visible: false
        anchors { horizontalCenter: parent.horizontalCenter
                    horizontalCenterOffset: 600
                  top: rect1.bottom; topMargin: 30}
        width: parent.width / 3
        height: 60
        color: "transparent"

        Canvas {
            id: canvas2
            anchors.fill: parent
            property real gradientOpacity: 0.0
            //Component.onCompleted: canvas2.requestPaint()
            onPaint: {
                var ctx = getContext("2d");
                ctx.clearRect(0, 0, canvas2.width, canvas2.height);
                if (gradientOpacity > 0) {
                    var gradient = ctx.createLinearGradient(0, 0, canvas2.width, canvas2.height);
                    gradient.addColorStop(0, "#37B29A");
                    gradient.addColorStop(1, "transparent");
                    ctx.fillStyle = gradient;
                    ctx.globalAlpha = gradientOpacity;
                    ctx.fillRect(0, 0, canvas2.width, canvas2.height);
                }
            }
        }

        Text {
            id: txtStart2
            anchors { left: parent.left; leftMargin: 10 + parent.width/10;
                      verticalCenter: parent.verticalCenter}
            font {pixelSize: 30}
            color: "white"
            text: qsTr("S125")
            font.family: Constants.font.family
            opacity: 0.5
            visible: false

            Behavior on visible {
                NumberAnimation { duration: 100; easing.type: Easing.InOutQuad }
            }
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                selected(1)
            }
            onEntered: {
                txtStart2.font.bold = true
                //txtInfo.text = qsTr("Select scene and customize settings")

                canvas2.gradientOpacity = 1.0;
                canvas2.requestPaint();
                canvas2.visible = true

                txtStart2.opacity = 1
            }
            onExited: {
                txtStart2.font.bold = false
                //txtInfo.text = ""

                canvas2.gradientOpacity = 0.3;
                canvas2.requestPaint();

                txtStart2.opacity = 0.5
            }
        }
    }

    ComboBox_ {
        id: comboBox
        x: 1446
        y: 19
        width: 120
        height: 35
        model: [
            "joystick 1", "joystick 2", "joystick 3"
        ]
    }



}
