import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.15
Rectangle {
    id: dataMenu
    width: 1830
    height: 880
    border.color: "#434343"
    border.width: 1

    gradient: Gradient {
        GradientStop {
            id: gradientStop
            position: 1
            color: "#191818"
        }

        GradientStop {
            position: 0.77193
            color: "#242424"
        }

        orientation: Gradient.Vertical
        GradientStop {
            position: 0
            color: "#111111"
        }

        GradientStop {
            position: 0.89474
            color: "#242424"
        }
    }

    Rectangle {
        id: table1
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 5
        anchors.topMargin: 40
        Text {
            id: text1
            height: 27
            text: qsTr("Propeller 1")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: tableModel1
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater
                {
                model: tableModel1
                Rectangle {
                    width: table1.width
                    height: table1.height / tableModel1.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }


    Rectangle {
        id: table2
        y: 42
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 85
        anchors.topMargin: 40
        Text {
            id: text2
            height: 27
            text: qsTr("Propeller 2")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: tableModel2
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: tableModel2
                Rectangle {
                    width: table2.width
                    height: table2.height / tableModel2.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20                       
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: table3
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 165
        anchors.topMargin: 40
        Text {
            id: text3
            height: 27
            text: qsTr("Propeller 3")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: tableModel3
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: tableModel3
                Rectangle {
                    width: table3.width
                    height: table3.height / tableModel3.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: table4
        y: 42
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 245
        anchors.topMargin: 40
        Text {
            id: text4
            height: 27
            text: qsTr("Propeller 4")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: tableModel4
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: tableModel4
                Rectangle {
                    width: table4.width
                    height: table4.height / tableModel4.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: tableAmp1
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 5
        anchors.topMargin: 330
        Text {
            id: textAmp1
            height: 27
            text: qsTr("Amp 1")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: ampModel1
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: ampModel1
                Rectangle {
                    width: tableAmp1.width
                    height: tableAmp1.height / ampModel1.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: tableAmp2
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 85
        anchors.topMargin: 330
        Text {
            id: textAmp2
            height: 27
            text: qsTr("Amp 2")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: ampModel2
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: ampModel2
                Rectangle {
                    width: tableAmp2.width
                    height: tableAmp2.height / ampModel2.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: tableAmp3
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 165
        anchors.topMargin: 330
        Text {
            id: textAmp3
            height: 27
            text: qsTr("Amp 3")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: ampModel3
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: ampModel3
                Rectangle {
                    width: tableAmp3.width
                    height: tableAmp3.height / ampModel3.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: tableAmp4
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 245
        anchors.topMargin: 330
        Text {
            id: textAmp4
            height: 27
            text: qsTr("Amp 4")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: ampModel4
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: ampModel4
                Rectangle {
                    width: tableAmp4.width
                    height: tableAmp4.height / ampModel4.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: tableTemp1
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 5
        anchors.topMargin: 620
        Text {
            id: textTemp1
            height: 27
            text: qsTr("Temp 1")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: tempModel1
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: tempModel1
                Rectangle {
                    width: tableTemp1.width
                    height: tableTemp1.height / tempModel1.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: tableTemp2
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 85
        anchors.topMargin: 620
        Text {
            id: textTemp2
            height: 27
            text: qsTr("Temp 2")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: tempModel2
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: tempModel2
                Rectangle {
                    width: tableTemp2.width
                    height: tableTemp2.height / tempModel2.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: tableTemp3
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 165
        anchors.topMargin: 620
        Text {
            id: textTemp3
            height: 27
            text: qsTr("Temp 3")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: tempModel3
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: tempModel3
                Rectangle {
                    width: tableTemp3.width
                    height: tableTemp3.height / tempModel3.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    Rectangle {
        id: tableTemp4
        width: 70
        height: 250
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 245
        anchors.topMargin: 620
        Text {
            id: textTemp4
            height: 27
            text: qsTr("Temp 4")
            anchors.top: parent.top
            anchors.topMargin: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
            color: "white"
            font.bold: true
        }
        Column {
            x: 0
            y: 0
            ListModel {
                id: tempModel4
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                ListElement { text: "" }
                }
            Repeater {
                model: tempModel4
                Rectangle {
                    width: tableTemp4.width
                    height: tableTemp4.height / tempModel4.count
                    color: "#00233e"
                    border.color: "white"
                    Text {
                        text: model.text
                        font.pixelSize: 20
                        color: "white"
                        anchors.left: parent.left
                        anchors.leftMargin: 5
                        font.bold: true
                    }
                }
            }
        }
    }

    property int rpmChart_max: 100
    property int tempChart_max: 100
    property int ampChart_max: 100
    property int timer_max: 0


    ChartView {
            id: rpmChart
            width: 1492
            height: 400
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 330
            anchors.topMargin: 420
            antialiasing: true
            plotAreaColor: "#00233e"
            backgroundColor: "#00233e"
            legend.visible: true
            legend.labelColor: "white"
            legend.font.bold: true
            ValuesAxis {
                id: rpm_axisX
                min: 0
                max: 10
                tickCount: 11
                labelFormat: "<font color='white'>%.0f</font>"
            }
            ValuesAxis {
                id: rpm_axisY
                min: 0
                max: rpmChart_max
                labelFormat: "<font color='white'>%.0f</font>"
            }
            LineSeries{
                id:rpm1
                name: "RPM1"
                axisX: rpm_axisX
                axisY: rpm_axisY
                color: "#00b8ff"
                width: 2
                XYPoint{x:0;y:0}
            }
            LineSeries{
                id:rpm2
                name: "RPM2"
                axisX: rpm_axisX
                axisY: rpm_axisY
                color: "yellow"
                width: 2
                XYPoint{x:0;y:0}
            }
            LineSeries{
                id:rpm3
                name: "RPM3"
                axisX: rpm_axisX
                axisY: rpm_axisY
                color: "red"
                width: 2
                XYPoint{x:0;y:0}
            }
            LineSeries{
                id:rpm4
                name: "RPM4"
                axisX: rpm_axisX
                axisY: rpm_axisY
                color: "green"
                width: 2
                XYPoint{x:0;y:0}
            }
        }
    Text{
        x: 1065
        y: 784
        anchors.leftMargin: rpmChart
        text: "Time (s)"
        color: "white"
        font.pixelSize: 16
        font.bold: true
    }

    Text{
        x: 334
        y: 625
        anchors.leftMargin: rpmChart
        text: "RPM"
        color: "white"
        font.pixelSize: 16
        font.bold: true
        rotation: 270
    }

    ChartView {
        id: tempChart
        width: 744
        height: 400
        anchors.leftMargin: 330
        anchors.topMargin: 8
        anchors.left: parent.left
        anchors.top: parent.top
        antialiasing: true
        plotAreaColor: "#00233e"
        backgroundColor: "#00233e"
        legend.visible: true
        legend.labelColor: "white"
        legend.font.bold: true
        ValuesAxis {
            id: temp_axisX
            tickCount: 6
            min: 0
            max: 10
            labelFormat: "<font color='white'>%.0f</font>"
        }
        ValuesAxis {
            id: temp_axisY
            min: 0
            max: 100
            labelFormat: "<font color='white'>%.0f</font>"
        }
        LineSeries{
            id:temp1
            name: "Temp1"
            axisX: temp_axisX
            axisY: temp_axisY
            color: "#00b8ff"
            width: 2
            XYPoint{x:0;y:0}
        }
        LineSeries{
            id:temp2
            name: "Temp2"
            axisX: temp_axisX
            axisY: temp_axisY
            color: "yellow"
            width: 2
            XYPoint{x:0;y:0}
        }
        LineSeries{
            id:temp3
            name: "Temp3"
            axisX: temp_axisX
            axisY: temp_axisY
            color: "red"
            width: 2
            XYPoint{x:0;y:0}
        }
        LineSeries{
            id:temp4
            name: "Temp4"
            axisX: temp_axisX
            axisY: temp_axisY
            color: "green"
            width: 2
            XYPoint{x:0;y:0}
        }


    }

    DataMenu_saveType {
        id: dataMenu_saveType
        x:901
        y:340
        visible: false
        z:1
    }

    Text{
        x: 685
        y: 370
        anchors.leftMargin: tempChart
        text: "Time (s)"
        color: "white"
        font.pixelSize: 16
        font.bold: true
    }

    Text{
        x: 287
        y: 208
        anchors.leftMargin: tempChart
        text: "Temperature (°C)"
        color: "white"
        font.pixelSize: 16
        font.bold: true
        rotation: 270
    }

        ChartView {
        id: ampChart
        width: 750
        height: 400
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1072
        anchors.topMargin: 8
        antialiasing: true
        plotAreaColor: "#00233e"
        backgroundColor: "#00233e"
        legend.visible: true
        legend.labelColor: "white"
        legend.font.bold: true
        ValuesAxis {
            id: amp_axisX
            tickCount: 6
            min: 0
            max: 10
            labelFormat: "<font color='white'>%.0f</font>"
        }
        ValuesAxis {
            id: amp_axisY
            min: 0
            max: ampChart_max
            labelFormat: "<font color='white'>%.0f</font>"
        }
        LineSeries{
            id:amp1
            name: "Amp1"
            axisX: amp_axisX
            axisY: amp_axisY
            color: "#00b8ff"
            width: 2
            XYPoint{x:0;y:0}
        }
        LineSeries{
            id:amp2
            name: "Amp2"
            axisX: amp_axisX
            axisY: amp_axisY
            color: "yellow"
            width: 2
            XYPoint{x:0;y:0}
        }
        LineSeries{
            id:amp3
            name: "Amp3"
            axisX:axisX3
            axisY:axisY3
            color: "red"
            width: 2
            XYPoint{x:0;y:0}
        }
        LineSeries{
            id:amp4
            name: "Amp4"
            axisX: amp_axisX
            axisY: amp_axisY
            color: "green"
            width: 2
            XYPoint{x:0;y:0}
        }
    }

        Text{
            x: 1427
            y: 370
            anchors.leftMargin: ampChart
            text: "Time (s)"
            color: "white"
            font.pixelSize: 16
            font.bold: true
        }

        Text{
            x: 1057
            y: 208
            anchors.leftMargin: ampChart
            text: "Circuit (A)"
            color: "white"
            font.pixelSize: 16
            font.bold: true
            rotation: 270
        }

    property var table1Array: []
    property var table2Array: []
    property var table3Array: []
    property var table4Array: []
    property int new_value1: 0
    property int new_value2: 0
    property int new_value3: 0
    property int new_value4: 0
    property int new_value_max: 0

    property var amp1Array: []
    property var amp2Array: []
    property var amp3Array: []
    property var amp4Array: []
    property int amp_value1: 0
    property int amp_value2: 0
    property int amp_value3: 0
    property int amp_value4: 0
    property int amp_value_max: 0

    property var temp1Array: []
    property var temp2Array: []
    property var temp3Array: []
    property var temp4Array: []
    property int temp_value1: 0
    property int temp_value2: 0
    property int temp_value3: 0
    property int temp_value4: 0
    property int temp_value_max: 0
    //DO ZMIANY PRZYJMOWANIE WARTOŚCI
    property int len:0
    //property int rpm_tick: 0
    //property int amp_tick: 0
    Timer {
            id: updateTimer
            interval: 1000
            repeat: true
            running: true
            onTriggered: {
                len=table1Array.length

                new_value1=Math.random() * rpmChart_max * 1.1
                new_value2=Math.random() * rpmChart_max
                new_value3=Math.random() * rpmChart_max
                new_value4=Math.random() * rpmChart_max
                new_value_max=Math.max(new_value1,new_value2,new_value3,new_value4)

                amp_value1=Math.random() * ampChart_max * 1.1
                amp_value2=Math.random() * ampChart_max
                amp_value3=Math.random() * ampChart_max
                amp_value4=Math.random() * ampChart_max
                amp_value_max=Math.max(amp_value1,amp_value2,amp_value3,amp_value4)

                temp_value1=Math.random() * tempChart_max * 1.1
                temp_value2=Math.random() * tempChart_max
                temp_value3=Math.random() * tempChart_max
                temp_value4=Math.random() * tempChart_max
                temp_value_max=Math.max(temp_value1,temp_value2,temp_value3,temp_value4)

                timer_max += 1
                if(timer_max>10)
                {
                    // if(rpm_tick===9)
                    // {
                    //     rpm_tick=0
                    // }
                    // else
                    // {
                    //     rpm_tick+=1
                    // }
                    //axisX1.tickCount=11+rpm_tick
                    rpm_axisX.max = timer_max
                    temp_axisX.max = timer_max
                    amp_axisX.max = timer_max
                }
                if(new_value_max>rpmChart_max)
                {
                   rpmChart_max=new_value_max
                   rpm_axisY.max=rpmChart_max
                }
                if(amp_value_max>ampChart_max)
                {
                   ampChart_max=amp_value_max
                   amp_axisY.max=ampChart_max
                }
                if(temp_value_max>tempChart_max)
                {
                   tempChart_max=temp_value_max
                   temp_axisY.max=tempChart_max
                }

                rpm1.append(timer_max, new_value1)
                rpm2.append(timer_max, new_value2)
                rpm3.append(timer_max, new_value3)
                rpm4.append(timer_max, new_value4)

                temp1.append(timer_max, temp_value1)
                temp2.append(timer_max, temp_value2)
                temp3.append(timer_max, temp_value3)
                temp4.append(timer_max, temp_value4)

                amp1.append(timer_max, amp_value1)
                amp2.append(timer_max, amp_value2)
                amp3.append(timer_max, amp_value3)
                amp4.append(timer_max, amp_value4)

                if(len!=8)
                {
                    table1Array.unshift(new_value1)
                    table2Array.unshift(new_value2)
                    table3Array.unshift(new_value3)
                    table4Array.unshift(new_value4)

                    amp1Array.unshift(amp_value1)
                    amp2Array.unshift(amp_value2)
                    amp3Array.unshift(amp_value3)
                    amp4Array.unshift(amp_value4)

                    temp1Array.unshift(temp_value1)
                    temp2Array.unshift(temp_value2)
                    temp3Array.unshift(temp_value3)
                    temp4Array.unshift(temp_value4)

                    for(var j=0;j<len+1;j++)
                    {
                        tableModel1.set(j, { text: table1Array[j].toString() });
                        tableModel2.set(j, { text: table2Array[j].toString() });
                        tableModel3.set(j, { text: table3Array[j].toString() });
                        tableModel4.set(j, { text: table4Array[j].toString() });

                        ampModel1.set(j, { text: amp1Array[j].toString() })
                        ampModel2.set(j, { text: amp2Array[j].toString() })
                        ampModel3.set(j, { text: amp3Array[j].toString() })
                        ampModel4.set(j, { text: amp4Array[j].toString() })

                        tempModel1.set(j, { text: temp1Array[j].toString() })
                        tempModel2.set(j, { text: temp2Array[j].toString() })
                        tempModel3.set(j, { text: temp3Array[j].toString() })
                        tempModel4.set(j, { text: temp4Array[j].toString() })
                    }
                }
                else
                {
                    table1Array.pop()
                    table2Array.pop()
                    table3Array.pop()
                    table4Array.pop()
                    table1Array.unshift(new_value1)
                    table2Array.unshift(new_value2)
                    table3Array.unshift(new_value3)
                    table4Array.unshift(new_value4)

                    amp1Array.pop()
                    amp2Array.pop()
                    amp3Array.pop()
                    amp4Array.pop()
                    amp1Array.unshift(amp_value1)
                    amp2Array.unshift(amp_value2)
                    amp3Array.unshift(amp_value3)
                    amp4Array.unshift(amp_value4)

                    temp1Array.pop()
                    temp2Array.pop()
                    temp3Array.pop()
                    temp4Array.pop()
                    temp1Array.unshift(temp_value1)
                    temp2Array.unshift(temp_value2)
                    temp3Array.unshift(temp_value3)
                    temp4Array.unshift(temp_value4)

                    for(var i=0;i<8;i++)
                    {
                        tableModel1.set(i, { text: table1Array[i].toString() });
                        tableModel2.set(i, { text: table2Array[i].toString() });
                        tableModel3.set(i, { text: table3Array[i].toString() });
                        tableModel4.set(i, { text: table4Array[i].toString() });

                        ampModel1.set(i, { text: amp1Array[i].toString() })
                        ampModel2.set(i, { text: amp2Array[i].toString() })
                        ampModel3.set(i, { text: amp3Array[i].toString() })
                        ampModel4.set(i, { text: amp4Array[i].toString() })

                        tempModel1.set(i, { text: temp1Array[i].toString() })
                        tempModel2.set(i, { text: temp2Array[i].toString() })
                        tempModel3.set(i, { text: temp3Array[i].toString() })
                        tempModel4.set(i, { text: temp4Array[i].toString() })
                    }
                }
            }
    }

    Button {
        id: buttonSave
        x: 1040
        y: 820
        width: 112
        height: 52
        enabled:false
        //checkable: false
        background: Rectangle {
            id: buttonSaveBack
            color: "#000000"
            border.width: 0
        }
        contentItem: Text {
        color: "#ffffff"
        text: "Save"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        }
        // onClicked: {
        //     if(dataMenu_saveType.visible===false)
        //     {
        //         dataMenu_saveType.visible = true
        //     }
        //     else
        //     {
        //         dataMenu_saveType.visible=false
        //     }
        // }
    }

    Button {
        id: buttonReset
        x: 930
        y: 820
        width: 112
        height: 52
        background: Rectangle {
            id: buttonResetBack
            color: "#000000"
            border.width: 0
        }
        onPressed: {
            table1Array = []
            table2Array = []
            table3Array = []
            table4Array = []

            amp1Array = []
            amp2Array = []
            amp3Array = []
            amp4Array = []

            temp1Array = []
            temp2Array = []
            temp3Array = []
            temp4Array = []

            rpmChart_max=100
            ampChart_max=100
            tempChart_max=100

            timer_max=0
            rpm_axisX.max=10
            rpm_axisY.max=100
            amp_axisX.max=10
            amp_axisY.max=100
            temp_axisX.max=10
            temp_axisY.max=100

            rpm1.clear()
            rpm2.clear()
            rpm3.clear()
            rpm4.clear()

            amp1.clear()
            amp2.clear()
            amp3.clear()
            amp4.clear()

            temp1.clear()
            temp2.clear()
            temp3.clear()
            temp4.clear()

            rpm1.append(0,0)
            rpm2.append(0,0)
            rpm3.append(0,0)
            rpm4.append(0,0)

            amp1.append(0,0)
            amp2.append(0,0)
            amp3.append(0,0)
            amp4.append(0,0)

            temp1.append(0,0)
            temp2.append(0,0)
            temp3.append(0,0)
            temp4.append(0,0)

            for(var i=0;i<8;i++)
            {
                tableModel1.set(i, { text: "" });
                tableModel2.set(i, { text: "" });
                tableModel3.set(i, { text: "" });
                tableModel4.set(i, { text: "" });

                ampModel1.set(i, { text: "" })
                ampModel2.set(i, { text: "" })
                ampModel3.set(i, { text: "" })
                ampModel4.set(i, { text: "" })

                tempModel1.set(i, { text: "" })
                tempModel2.set(i, { text: "" })
                tempModel3.set(i, { text: "" })
                tempModel4.set(i, { text: "" })
            }
           }
        contentItem: Text {
            color: "#ffffff"
            text: "Reset"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

        }
    }

        Button {
            id: buttonRecord
            x: 1151
            y: 820
            width: 112
            height: 52
            checkable: true
            background: Rectangle {
                id: buttonRecordBack
                color: "#000000"
                border.width: 0
            }
            contentItem: Text {
            color: "#ffffff"
            text: "Record"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            }
            onClicked: {
                if (dataMenu_saveType.visible===true)
                {
                    buttonRecord.checked = true
                }
            }
        }

        states: [
            State {
                name: "buttonSave_checked"
                when: buttonSave.checked
                PropertyChanges {
                    target: buttonResetBack
                    color: "#45000000"
                }
                PropertyChanges {
                    target: buttonReset
                    //enabled:false
                    enabled:false
                    checkable:false
                }
                PropertyChanges {
                    target: buttonRecordBack
                    color: "#ff0000"
                }
                PropertyChanges {
                    target: buttonSave
                    //checkable: false
                    enabled: false
                }
                PropertyChanges {
                    target: buttonSaveBack
                    color: "#2a8e02"
                }
                PropertyChanges {
                    target: dataMenu_saveType
                    visible:true
                }
            },

            State {
                name: "buttonRecord_checked"
                when: buttonRecord.checked
                PropertyChanges {
                    target: buttonRecordBack
                    color: "#ff0000"
                }
                PropertyChanges {
                    target: buttonSave
                    checkable: true
                    enabled: true
                }
                PropertyChanges {
                    target: buttonSaveBack
                    //color: "#2a8e02"
                    color: "#000000"
                }
                PropertyChanges {
                    target: buttonSave
                    checkable: true
                    enabled: true
                }
                PropertyChanges {
                    target: buttonResetBack
                    color: "#45000000"
                }
                PropertyChanges {
                    target: buttonReset
                    enabled:false
                }
            }
        ]
    // function dataMenu_reset(){ RESET GUZIKÓW
    //     if(dataMenu_saveType.visible===true)
    //     {
    //         visible=false
    //     }
    // }
    function dataMenu_saveType_close()
    {
        dataMenu_saveType.visible=false
        buttonSave.checked=false
    }
}
