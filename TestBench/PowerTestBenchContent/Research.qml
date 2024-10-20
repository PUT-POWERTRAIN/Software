import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

import StudySetup 1.0

Rectangle {
    property color textColor: Qt.rgba(0.9, 0.9, 0.9, 1)
    property color placholderTextColor: Qt.rgba(0.9, 0.9, 0.9, 0.6)
    property color fieldsColor: Qt.rgba(0.3, 0.3, 0.3, 0.3)
    property color ticksColor: Qt.rgba(0.9, 0.9, 0.9, 0.6)
    property string graphLineColor: "#2cf8f1"

    id: root
    width: 800
    height: 600

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

    property int widthval
    property int heightval
    property int oldX
    property int oldY
    property bool running: false;

    Item {
        width: 0.68 * root.width
        height: 0.7 * root.height
        x: 0.02 * root.width
        y: 0.02 * root.height
        Rectangle{
            id: graph
            width: parent.width
            height: parent.height

            color: root.fieldsColor;

            Repeater{
                model: 13
                Rectangle {
                    required property int index
                    width: (index%2 == 0)? parent.height * 0.005 : parent.height * 0.01
                    height: parent.height
                    border.width: 0
                    x: index/12 * parent.width - width/2;
                    color: root.ticksColor
                }
            }

            Repeater{
                model: 11
                Rectangle {
                    required property int index
                    width: parent.width;
                    height: (index%2==0)? parent.height * 0.005 : parent.height * 0.01
                    border.width: 0
                    y: index/10 * parent.height - height/2;
                    color: root.ticksColor
                }
            }

            Canvas{
                id: canvas
                anchors.fill: parent
                onPaint: {
                    var ctx = getContext("2d");
                    ctx.reset();
                    ctx.moveTo(0, 0)
                    ctx.strokeStyle = root.graphLineColor;
                    ctx.lineWidth = parent.height * 0.015;
                    root.oldX = 0
                    for( var i = 0; i < taskModel.rowCount(); i++ ) {
                        var widthval = width * taskModel.get(i).duration / commandsList.seconds
                        var heightval = height * (1 - taskModel.get(i).power / 100)
                        ctx.moveTo(root.oldX, heightval)
                        ctx.lineTo(root.oldX + widthval, heightval)
                        root.oldX += widthval
                        root.oldY = heightval
                        ctx.stroke()
                    }
                }
            }
        }
    }

    Item{
        width: 0.68 * root.width
        height: 0.06 * root.height

        x: 0.02 * root.width
        y: 0.72 * root.height

        Repeater{
            model: 6
            Text {
                required property int index;
                height: parent.height
                text: (commandsList.seconds==0) ? "N/A" : Math.round((2 * index + 1) * commandsList.seconds / 12 * 100) / 100 + "s"
                font.pixelSize: 0.5 * parent.height
                x: parent.width/12 + index/6 * parent.width - width/2
                verticalAlignment: Text.AlignVCenter

                color: root.textColor;
            }
        }
    }

    Item{
        x: 0.7 * root.width
        y: 0.02 * root.height

        height: 0.7 * root.height
        width: 0.06 * root.width

        Repeater{
            model: 5
            Text {
                required property int index;
                width: parent.width
                text: (90 - (20*index)) + "%"
                font.pixelSize: 0.3 * parent.width
                y: (parent.height/10) + (index/5) * parent.height - height/2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: root.textColor;
            }
        }
    }

    Text{
        text: "Total time: " + Math.floor(parseFloat(commandsList.seconds) / 60) + "m " + (parseFloat(commandsList.seconds) - (60 * Math.floor(parseFloat(commandsList.seconds) / 60))) + "s"

        height: 0.05 * root.height
        width: 0.68 * root.width

        x: 0.02 * root.width
        y: 0.82 * root.height - height
        font.pointSize: 60
        fontSizeMode: Text.Fit

        color: root.textColor;
    }

    Rectangle{

        property real seconds: 0

        id: commandsList
        x: 0.76 * root.width
        y: 0.02 * root.height
        width: 0.22 * root.width
        height: 0.5 * root.height
        radius: 0.02 * root.height

        color: root.fieldsColor;

        ListView {
            id: taskListView
            clip: true
            anchors.verticalCenter: parent.verticalCenter;
            anchors.horizontalCenter: parent.horizontalCenter;
            width: 0.20 * root.width
            height: 0.46 * root.height

            model: ListModel {
                id: taskModel
            }

            delegate: Item {
                anchors.fill: commandsList
                width: taskListView.width
                height: 40

                RowLayout{
                    anchors.fill: parent
                    spacing: 10
                    Text {
                        Layout.fillWidth: true
                        Layout.preferredWidth: parent.width / 3
                        text: model.power + "%"
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 20
                        color: root.textColor
                    }
                    Text {
                        Layout.fillWidth: true
                        Layout.preferredWidth: parent.width / 3
                        text: model.duration + "s"
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 20
                        color: root.textColor
                    }
                    Button {
                        id: delButton
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.preferredWidth: parent.width / 3
                        text: "DEL"
                        onClicked: {
                            if (!root.running){
                                commandsList.seconds -= parseFloat(model.duration);
                                taskModel.remove(index)
                                canvas.requestPaint()
                            }
                        }

                        background: Rectangle {
                                id: delButtonBackground
                                color: root.running ? "gray" : (delButton.hovered ? "black" : root.fieldsColor);
                            }
                        palette.buttonText: root.textColor
                    }
                }
            }
        }
    }

    TextField {
        id: power
        x: 0.76 * root.width
        y: 0.54 * root.height
        width: 0.22 * root.width
        height: 0.08 * root.height
        font.pixelSize: 0.4 * height
        placeholderText: "30 (%)"

        placeholderTextColor: root.placholderTextColor;
        color: root.textColor

        background: Rectangle {color: root.fieldsColor;}
    }

    TextField {
        id: duration
        x: 0.76 * root.width
        y: 0.64 * root.height
        width: 0.22 * root.width
        height: 0.08 * root.height
        font.pixelSize: 0.4 * height
        placeholderText: "5 (s)"

        placeholderTextColor: root.placholderTextColor;
        color: root.textColor

        background: Rectangle {color: root.fieldsColor;}
    }

    Item{
        x: 0.76 * root.width
        y: 0.74 * root.height
        width: 0.22 * root.width
        height: 0.08 * root.height

        Button {
            id: addButton
            anchors.left: parent.left
            text: "Add Step"
            width: 0.45 * parent.width
            height: parent.height
            font.pixelSize: 0.2 * width
            background: Rectangle {id: addButtonBackground; color: root.running ? "gray" : (addButton.hovered ? "black" : root.fieldsColor);}
            palette.buttonText: root.textColor

            onClicked: {
                if (!root.running){
                    if (power.text !== "" && duration.text != "" && parseFloat(duration.text) > 0 && parseInt(power.text) >= 0 && parseInt(power.text) <= 100) {
                        taskModel.append({ "power" : power.text, "duration": duration.text })
                        commandsList.seconds += parseFloat(duration.text)
                        power.text = ""
                        duration.text = ""
                        canvas.requestPaint()
                    }
                }
            }
        }

        Button {
            id:runButton
            anchors.right: parent.right
            width: 0.45 * parent.width
            height: parent.height
            font.pixelSize: 0.2 * width
            text: "Run"

            background: Rectangle {id: runButtonBackground; color: runButton.hovered ? "black" : root.fieldsColor;}
            palette.buttonText: root.textColor

            onClicked: {
                if (!root.running){
                    studyManager.loadData(taskModel)
                    studyManager.start()
                }
                else{
                    studyManager.cancel();
                }
            }
        }
    }

    StudyManager {
        id: studyManager
        onStudyFinished: {
            root.running = false
            runButton.text = "Run"
        }
        onCanceled: {
            root.running = false
            runButton.text = "Run"
        }
        onStarted: {
            root.running = true
            runButton.text = "Cancel"
        }
    }
}
