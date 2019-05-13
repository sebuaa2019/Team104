/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.7
import QtQuick.Layouts 1.3
import Coffee 1.0
import QtDataVisualization 1.0
import "."

Rectangle {
    id: root

    width: 768
    height: 768
    color: surfacePlot.theme.windowColor

    property alias questionVisible: question.visible
    property bool showLabels: true
    property alias coffeeLabel: cappuccinoLabel.text

    property real sugarAmount: 2
    property real milkAmount: 4
    property real coffeeAmount: 4

    Data {
        id: surfaceData
    }

    Rectangle {
        id: surfaceView
        color: "#443224"
        //anchors.fill: parent
        width: root.width;
        height: root.height;
        anchors.top: root.top;
        anchors.left: root.left;

        Text {
            id: cappuccinoLabel
            color: "#ffffff"
            text: qsTr("ADMIN")
            visible: !question.visible
            anchors.top: parent.top
            anchors.topMargin: 32
            anchors.left: parent.left
            anchors.leftMargin: Constants.defaultMargin
            font.family: Constants.fontFamily
            wrapMode: Text.WrapAnywhere
            font.pixelSize: 64
            font.capitalization: Font.AllUppercase
        }

    //! [0]
        ColorGradient {
            id: surfaceGradient
            ColorGradientStop { position: 0.0; color: "darkslategray" }
            ColorGradientStop { id: middleGradient; position: 0.25; color: "peru" }
            ColorGradientStop { position: 1.0; color: "red" }
        }
    //! [0]

        Surface3D {
            id: surfacePlot
            width: surfaceView.width
            height: surfaceView.height
        //! [7]
            theme: Theme3D {
                type: Theme3D.ThemeStoneMoss
                font.family: "STCaiyun"
                font.pointSize: 35
                colorStyle: Theme3D.ColorStyleRangeGradient
                baseGradients: [surfaceGradient]
            }
        //! [7]

            shadowQuality: AbstractGraph3D.ShadowQualityMedium
            selectionMode: AbstractGraph3D.SelectionSlice | AbstractGraph3D.SelectionItemAndRow
            scene.activeCamera.cameraPreset: Camera3D.CameraPresetIsometricLeft
            axisY.min: 0.0
            axisY.max: 500.0
            axisX.segmentCount: 10
            axisX.subSegmentCount: 2
            axisX.labelFormat: "%i"
            axisZ.segmentCount: 10
            axisZ.subSegmentCount: 2
            axisZ.labelFormat: "%i"
            axisY.segmentCount: 5
            axisY.subSegmentCount: 2
            axisY.labelFormat: "%i"
            axisY.title: "Height"
            axisX.title: "Latitude"
            axisZ.title: "Longitude"
        }

        //! [5]
            Surface3DSeries {
                id: surfaceSeries
                flatShadingEnabled: false
                drawMode: Surface3DSeries.DrawSurface

                ItemModelSurfaceDataProxy {
                //! [5]
                //! [6]
                    itemModel: surfaceData.model
                    rowRole: "longitude"
                    columnRole: "latitude"
                    yPosRole: "height"
                }
                //! [6]
                onDrawModeChanged: checkState()
            }
       //! [4]
            Surface3DSeries {
                            id: heightSeries
                            flatShadingEnabled: false
                            drawMode: Surface3DSeries.DrawSurface
                            visible: false

                            HeightMapSurfaceDataProxy {
                                heightMapFile: ":/heightmaps/image"
                                // We don't want the default data values set by heightmap proxy.
                                minZValue: 30
                                maxZValue: 60
                                minXValue: 67
                                maxXValue: 97
                            }

                            onDrawModeChanged: checkState()
                        }
                        //! [4]
    }
    Image {
        id: question
    }

    RowLayout {
            id: buttonLayout
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            opacity: 0.5

            NewButton {
                id: surfaceGridToggle
                Layout.fillWidth: true
                Layout.fillHeight: true
                text: "Show Surface Grid"
                //! [1]
                onClicked: {
                    if (surfaceSeries.drawMode & Surface3DSeries.DrawWireframe) {
                        surfaceSeries.drawMode &= ~Surface3DSeries.DrawWireframe;
                        heightSeries.drawMode &= ~Surface3DSeries.DrawWireframe;
                    } else {
                        surfaceSeries.drawMode |= Surface3DSeries.DrawWireframe;
                        heightSeries.drawMode |= Surface3DSeries.DrawWireframe;
                    }
                }
                //! [1]
            }

            NewButton {
                id: surfaceToggle
                Layout.fillWidth: true
                Layout.fillHeight: true
                text: "Hide Surface"
                //! [8]
                onClicked: {
                    if (surfaceSeries.drawMode & Surface3DSeries.DrawSurface) {
                        surfaceSeries.drawMode &= ~Surface3DSeries.DrawSurface;
                        heightSeries.drawMode &= ~Surface3DSeries.DrawSurface;
                    } else {
                        surfaceSeries.drawMode |= Surface3DSeries.DrawSurface;
                        heightSeries.drawMode |= Surface3DSeries.DrawSurface;
                    }
                }
                //! [8]
            }

            NewButton {
                id: flatShadingToggle
                Layout.fillWidth: true
                Layout.fillHeight: true
                text: surfaceSeries.flatShadingSupported ? "Show Flat" : "Flat not supported"
                enabled: surfaceSeries.flatShadingSupported
                //! [2]
                onClicked: {
                    if (surfaceSeries.flatShadingEnabled === true) {
                        surfaceSeries.flatShadingEnabled = false;
                        heightSeries.flatShadingEnabled = false;
                        text = "Show Flat"
                    } else {
                        surfaceSeries.flatShadingEnabled = true;
                        heightSeries.flatShadingEnabled = true;
                        text = "Show Smooth"
                    }
                }
                //! [2]
            }

            NewButton {
                id: backgroundToggle
                Layout.fillWidth: true
                Layout.fillHeight: true
                text: "Hide Background"
                onClicked: {
                    if (surfacePlot.theme.backgroundEnabled === true) {
                        surfacePlot.theme.backgroundEnabled = false;
                        text = "Show Background"
                    } else {
                        surfacePlot.theme.backgroundEnabled = true;
                        text = "Hide Background"
                    }
                }
            }

            NewButton {
                id: gridToggle
                Layout.fillWidth: true
                Layout.fillHeight: true
                text: "Hide Grid"
                onClicked: {
                    if (surfacePlot.theme.gridEnabled === true) {
                        surfacePlot.theme.gridEnabled = false;
                        text = "Show Grid"
                    } else {
                        surfacePlot.theme.gridEnabled = true;
                        text = "Hide Grid"
                    }
                }
            }

            NewButton {
                id: seriesToggle
                Layout.fillWidth: true
                Layout.fillHeight: true
                text: "Switch to Height Map Series"
                //! [3]
                onClicked: {
                    if (surfaceSeries.visible === false) {
                        surfacePlot.axisY.max = 500.0
                        surfaceSeries.visible = true
                        heightSeries.visible = false
                        middleGradient.position = 0.25
                        text = "Switch to Height Map Series"
                    } else {
                        surfacePlot.axisY.max = 250.0
                        surfaceSeries.visible = false
                        heightSeries.visible = true
                        middleGradient.position = 0.50
                        text = "Switch to Item Model Series"
                    }
                }
                //! [3]
            }
        }

    function checkState() {
            if (surfaceSeries.drawMode & Surface3DSeries.DrawSurface)
                surfaceToggle.text = "Hide Surface"
            else
                surfaceToggle.text = "Show Surface"

            if (surfaceSeries.drawMode & Surface3DSeries.DrawWireframe)
                surfaceGridToggle.text = "Hide Surface Grid"
            else
                surfaceGridToggle.text = "Show Surface Grid"
        }
}

