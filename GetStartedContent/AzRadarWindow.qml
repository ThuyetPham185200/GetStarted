import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: radarWindow
    visible: true
    property string borderColor: "red"
    property string bgColor: "red"
    property real minAZ: 0
    property real maxAZ: 110
    property real azimuth: 0
    property int t: 0
    property int count: 0

    Rectangle {
        id: rectTracker
        width: 10
        height: 10
        radius: width/2
        color: Qt.rgba(0, 255, 0, 255)

        Canvas {
            id: cvsPan
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            property color drawColor: borderColor
            property real hfov: 0.6
            width : 100
            height : width
//            visible: mapScaleVal < 10000
//            enabled: visible
            onPaint: {
                var ctx = getContext("2d");
                ctx.reset();
                var x = width / 2
                var y = height / 2
                var lineSize = 5;
                var losSize = width /2 - lineSize*2;
                ctx.beginPath();
                ctx.lineWidth = 2
                // draw circle
                ctx.arc(x, y, (width / 2) - ctx.lineWidth/2, ((minAZ - 90) / 180.0) * Math.PI, ((maxAZ - 90) / 180.0) * Math.PI, false)
                ctx.strokeStyle = drawColor
                ctx.stroke()
                // draw LOS
                ctx.beginPath();
                ctx.fillStyle = drawColor
                ctx.moveTo(width/2,height/2)
                ctx.arc(x, y, losSize,
                        (azimuth - hfov/2 - 90)/180*Math.PI,
                        (azimuth + hfov/2 - 90)/180*Math.PI, false)
                ctx.lineTo(x,y);
                // ctx.fill()
                ctx.stroke()
            }
        }
    }

    Timer {
        id: timerTopaint
        repeat: true
        running: true
        interval: 500
        onTriggered:  {
            if(radarWindow.azimuth >= 110 || radarWindow.azimuth <= 0) radarWindow.t = (-1) * t;
            radarWindow.azimuth += radarWindow.t * 10
            cvsPan.requestPaint()
        }
    }
}
