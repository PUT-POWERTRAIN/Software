// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.7
import PowerTestBench
import QtQuick3D 6.7
import Generated.QtQuick3D.Dron_V4__1_
//import Connections 1.0
import QtQuick.Controls 6.7
//import Measurment 1.0
Window {
    id: mainWindow
    //MOJE
    visible: true
    color: "#191919"
    visibility: Window.FullScreen
    title: "PowerTestBench"
    width: 1920
    height: 1080



    property int angle1: 0
    property int zoom: 45
    property int angle: 0
    property int radius: 70
    property double xValue: 0
    property double yValue: 70
    property double pi: 3.14
    property int cameraAngle: 0


    function calculateCriclePoint(angle2, radius){
            xValue = radius * Math.sin(angle2*Math.PI/180)
            yValue = radius * Math.cos(angle2*Math.PI/180)
            cameraAngle = angle2
        }
    function motorSignalChanged(motoFrust,motoNumba){
        console.log("str: " + motoFrust + ", " + motoNumba)
        class1.motorSignalChangeTo(motoFrust, motoNumba)
    }

    function cameraToLeft() {
            angle1 += 20
            timer.start()
        }

    function cameraToRight() {
            angle1 -= 20
            timer.start()
        }

    function cameraReset() {
            angle1 = 0
            timer.start()
        }

    function zoomOut() {
        if(radius < 170) {
            zoom += 5
            radius = radius + 5
            calculateCriclePoint(angle1, radius)
        }
        console.log("Zin: " + zoom + ", " + yValue + ", " + radius);


    }

    function zoomIn() {
        if(radius > 60) {
            zoom -= 5
            radius = radius - 5
            calculateCriclePoint(angle1, radius)
        }
        console.log("Zout: " + zoom + ", " + yValue + ", " + radius);


    }

    function zoomReset() {
        zoom = 45
        radius = 70
        calculateCriclePoint(angle1, radius)

    }


    Timer {
        id: timer
        running: false
        repeat: false
        interval: 20
        onTriggered: {
            calculateCriclePoint(angle1, radius)
        }

    }

    Screen01 {
        id: mainScreen



        View3D {
            id: view3D
            anchors.fill: parent
            environment: sceneEnvironment
            SceneEnvironment {
                id: sceneEnvironment
                antialiasingQuality: SceneEnvironment.High
                antialiasingMode: SceneEnvironment.MSAA
            }


            Node {
                id: scene
                DirectionalLight {
                    id: directionalLight
                    x: xValue
                    y: zoom
                    brightness: 0.61
                    eulerRotation.z: -0.00004
                    eulerRotation.y: cameraAngle
                    eulerRotation.x: -28.83487
                    z: yValue
                }

                PerspectiveCamera {
                    id: sceneCamera
                    x: xValue
                    y: zoom
                    eulerRotation.z: -0.00004
                    eulerRotation.y: cameraAngle
                    eulerRotation.x: -28.83487
                    z: yValue

                    // y: 46.998
                    // eulerRotation.z: 0.00037
                    // eulerRotation.x: -23.16613
                    // x: xValue
                    // eulerRotation.y: cameraAngle
                    // z: yValue
                }

            }


            Dron_V4__1_ {
                id: dron_V4__1_
                x: 0
                z: 0
            }

            //MOJE
            DataMenu {
                id: dataMenu
                visible: false
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

            }

            Battery {
                id: battery
                x: 77
                y: 466
                width: 211
                height: 209
            }

            Research {
                id: studyMenu

                visible: false
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }


            // Dron_V4__1_ {
            //     id: dron_V4__1_2
            //     x: xValue
            //     eulerRotation.y: angle1
            //     z: yValue

            // }

        }


        MenuBarFinal {
            id: menuBarFinal
            y: 583
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
        }

        Control3D {
            id: control3D
            x: 1536
            y: 730
            width: parent.width/8
            height: parent.height/6
            anchors.right: parent.right
            anchors.bottom: menuBarFinal.top
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
        }


        //MOJE
        ShaderEffectSource {
            id: controlMenuEffect
            sourceItem: controlMenu
            smooth: true
            live: true
            width: controlMenu.width
            height: controlMenu.height
            opacity: 0.65  // Ustawienie przezroczystości na całą grupę
            visible: controlMenu.visible
            // Ustawienie pozycji tak, aby pasowała do ControlMenu
            x: controlMenu.x
            y: controlMenu.y
        }
        //MOJE
        ControlMenu {
            id: controlMenu
            width: parent.width / 3
            height: parent.height / 3
            opacity: 0  // Ustawienie przezroczystości na 0, aby nie wyświetlał się bezpośrednio
            visible: false  // Musi być widoczny dla ShaderEffectSource, ale nie dla użytkownika
            anchors.leftMargin: parent.width / 2 - width / 2
            anchors.bottomMargin: parent.height - height
            layer.enabled: false
        }
    }

    //OBIE MOJE
    function showControlMenu() {
        if (controlMenu.visible === true){
            controlMenu.visible = false
        }
        else {
            controlMenu.visible = true
            control3D.visible = true
            battery.visible = true
        }
        if (dataMenu.visible===true)
        {    
            dataMenu.visible=false
        }
        if (studyMenu.visible===true)
        {
            studyMenu.visible=false
        }
    }

    function showDataMenu() {
        if (dataMenu.visible === true){
            dataMenu.visible = false
            control3D.visible = true
            battery.visible = true
        }
        else{
            dataMenu.visible = true
            control3D.visible = false
            battery.visible = false
        }
        if (controlMenu.visible===true)
        {
            controlMenu.visible=false
        }
        if (studyMenu.visible===true)
        {
            studyMenu.visible=false
        }
    }   
    function showStudyMenu(){
        if (studyMenu.visible===true)
        {
            studyMenu.visible=false
        }
        else
        {
            studyMenu.visible=true
        }
        if (controlMenu.visible===true)
        {
            controlMenu.visible=false
        }
        if (dataMenu.visible===true)
        {
            dataMenu.visible=false
            control3D.visible = true
            battery.visible = true
        }
    }
    function showOverviewMenu()
    {
        if (controlMenu.visible === true){
            controlMenu.visible = false
        }
        if (dataMenu.visible === true){
            dataMenu.visible = false
            control3D.visible = true
            battery.visible = true
        }
        if (studyMenu.visible===true)
        {
            studyMenu.visible=false
        }
    }
}












/*##^##
Designer {
    D{i:0}D{i:3;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
