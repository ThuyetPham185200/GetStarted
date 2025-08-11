import QtQuick 2.15
import QtQuick.Controls 2.15
import GetStarted
Item {
    id: main
    visible: false
    property var mapViewComponent: mapViewComponent
    property var eoViewComponent: eoViewComponent
    property var irViewComponent: irViewComponent
    property var controlViewComponent: controlViewComponent

    property var mapView: ({})
    Component.onCompleted: {
        mapView["CTRL"] = controlViewComponent
        mapView["IR"] = irViewComponent
        mapView["EO"] = eoViewComponent
        mapView["MAP"] = mapViewComponent
    }

    MapView {
        id: mapViewComponent
    }

    EOView {
        id: eoViewComponent
    }

    IRView {
        id:irViewComponent
    }
    ControlView {
        id: controlViewComponent
    }
}
