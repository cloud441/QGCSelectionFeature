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

//Item {
//
//    id:     selection
//    width:  1000
//    height: 700
//
//
//
//
//    property var map
//    property var fitFunctions
//    property bool   showMission:          true
//    property bool   showAllItems:         true




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

        onClicked: {
            console.log(ScreenToolsController.mouseX(), ScreenToolsController.mouseY());

            //fitFunctions.fitMapViewportToAllItems()
        }
    }

    QGCButton {
        text:               qsTr("Move points")
        Layout.fillWidth:   true

        onClicked: {
            //dropPanel.hide()
            //map.center = fitFunctions.fitHomePosition()
        }
    }


} // Column

//}
