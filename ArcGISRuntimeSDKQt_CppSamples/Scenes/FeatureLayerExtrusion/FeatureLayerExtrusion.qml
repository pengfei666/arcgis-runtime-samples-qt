// [WriteFile Name=FeatureLayerExtrusion, Category=Scenes]
// [Legal]
// Copyright 2017 Esri.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// [Legal]

import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import Esri.Samples 1.0

FeatureLayerExtrusionSample {
    id: rootRectangle
    clip: true
    width: 800
    height: 600

    property real scaleFactor: (Screen.logicalPixelDensity * 25.4) / (Qt.platform.os === "windows" || Qt.platform.os === "linux" ? 96 : 72)

    SceneView {
        id: sceneView
        objectName: "sceneView"
        anchors.fill: parent


        // combo box to update the extrusion
        ComboBox {
            anchors {
                top: parent.top
                left: parent.left
                margins: 10 * scaleFactor
            }
            width: 200 * scaleFactor
            model: ["TOTAL POPULATION", "POPULATION DENSITY"]

            onCurrentTextChanged: {
                if (currentText === "TOTAL POPULATION")
                    totalPopulation();
                else
                    popDensity();
            }
        }
    }
}
