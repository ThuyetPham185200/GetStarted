import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
//import io.qt.dev 1.0
Item {
    id: root
    signal centerChanged(var _x, var _y, var _width, var _height);
    signal centerReleased();
    width: 100
    height: width
    Rectangle {
        id: rectControl
        anchors.fill: parent
        color: "#37B29A"
        border.color: "#37B29A"
        Drag.active: mouseArea.drag.active
        radius: 2
    }

    Image {
        id: imgTarget
        width: 40
        height: 40
        source: "icons/Virtualjoinstick.svg"
        z: mouseArea.drag.active ||  mouseArea.pressed ? 2 : 1
        x: rectControl.x+rectControl.width/2-width/2
        y: rectControl.y+rectControl.height/2-height/2
        property point beginDrag
        property bool caught: false

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            drag.target: parent
            drag.minimumX: rectControl.x- parent.width/2
            drag.maximumX: rectControl.x+ rectControl.width - parent.width/2
            drag.minimumY: rectControl.y- parent.height/2
            drag.maximumY: rectControl.y+ rectControl.height - parent.height/2
            onPressed: {
                if(imgTarget.x >= rectControl.x && imgTarget.x <= rectControl.x+ rectControl.width &&
                   imgTarget.y >= rectControl.y && imgTarget.y <= rectControl.y+ rectControl.height ){
                    imgTarget.beginDrag = Qt.point(imgTarget.x, imgTarget.y);
                }
            }
            onReleased: {
                if(!imgTarget.caught) {
                    backAnimX.from = imgTarget.x;
                    backAnimX.to = imgTarget.beginDrag.x;
                    backAnimY.from = imgTarget.y;
                    backAnimY.to = imgTarget.beginDrag.y;
                    backAnim.start();
                }
                centerReleased();
            }

            onPositionChanged: {
                var curX = Number(imgTarget.x+ width/2).toFixed(0);
                var curY = Number(imgTarget.y+ height/2).toFixed(0);
                centerChanged(curX,curY,rectControl.width,rectControl.height)

            }
        }
        ParallelAnimation {
            id: backAnim
            SpringAnimation { id: backAnimX; target: imgTarget; property: "x"; duration: 500; spring: 2; damping: 0.2 }
            SpringAnimation { id: backAnimY; target: imgTarget; property: "y"; duration: 500; spring: 2; damping: 0.2 }
        }
    }
}
