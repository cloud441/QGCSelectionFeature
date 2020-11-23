/****************************************************************************
 *
 * (c) 2009-2020 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QtQuick          2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts  1.2
import QtPositioning    5.3

import QGroundControl               1.0
import QGroundControl.ScreenTools   1.0
import QGroundControl.ScreenToolsController 1.0
import QGroundControl.Controls      1.0
import QGroundControl.Palette       1.0
import QGroundControl.SettingsManager   1.0
import QGroundControl.FactSystem    1.0
import QGroundControl.FactControls  1.0



ColumnLayout {
    id:             root
    clip:           true
    height:         ScreenTools.defaultFontPixelHeight * 23
    width:          ScreenTools.defaultFontPixelWidth * 30

    property var    myGeoFenceController
    property var    flightMap

    // ----------------------

    spacing:    ScreenTools.defaultFontPixelWidth * 0.5

    //property var    map
    //property var    fitFunctions
    property bool   showMission:          true
    property bool   showAllItems:         true
    QGCLabel { text: qsTr("") }

    // ----------------------

    GeoFenceEditor {
                anchors.top:            parent.top
                anchors.topMargin:      ScreenTools.defaultFontPixelHeight * 0.25
                anchors.bottom:         parent.bottom
                anchors.left:           parent.left
                anchors.right:          parent.right
                myGeoFenceController:   parent.myGeoFenceController
                flightMap:              parent.flightMap
                visible:                true
            }
}



/*
ColumnLayout {
    id:         root
    spacing:    ScreenTools.defaultFontPixelWidth * 0.5

    property var    map
    property var    fitFunctions
    property bool   showMission:          true
    property bool   showAllItems:         true

    QGCLabel { text: qsTr("Selection Menu:") }

    QGCButton {
        text:               qsTr("Select")
        Layout.fillWidth:   true
        visible:            showMission

        onClicked: {
            //dropPanel.hide()
            //fitFunctions.fitMapViewportToMissionItems()
            var topLeftCoord      = QtPositioning.coordinate(180 - 90.0, 0 - 180.0)
            var bottomRightCoord  = QtPositioning.coordinate(0 - 90.0, 360 - 180.0)
            map.setVisibleRegion(QtPositioning.rectangle(topLeftCoord, bottomRightCoord))
        }
    }

    QGCButton {
        text:               qsTr("All Waypoints")
        Layout.fillWidth:   true
        visible:            true

    }

    QGCButton {
        text:               qsTr("Move points")
        Layout.fillWidth:   true

        onClicked: {
            //dropPanel.hide()
            //map.center = fitFunctions.fitHomePosition()
        }
    }
}
*/