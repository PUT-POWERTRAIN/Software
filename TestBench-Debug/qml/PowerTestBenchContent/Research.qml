import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Rectangle {

    property color textColor: Qt.rgba(0.92, 0.8, 1, 1)
    property color placholderTextColor: Qt.rgba(0.92, 0.8, 1, 0.4)
    property color bckgrColor: Qt.rgba(0.07, 0.05, 0.2, 1)
    property color bckgrColorB: Qt.rgba(0.12, 0.05, 0.24, 1)
    property color fieldsColor: Qt.rgba(0.3, 0.3, 0.3, 0.3)
    property color ticksColor: Qt.rgba(0.7, 0.7, 0.8, 0.6)
    property color graphLineColor: Qt.rgba(0.8, 0.04, 0.08, 1);

    id: root
    width: 800
    height: 600
    //color: bckgrColor

    gradient: Gradient {
        GradientStop { position: 0.0; color: bckgrColor }
        GradientStop { position: 1.0; color: bckgrColorB }
    }

    property int widthval
    property int heightval
    property int oldX
    property int oldY



    Item {
        width: 0.68 * root.width
        height: 0.7 * root.height
        x: 0.02 * root.width
        y: 0.02 * root.height
        Rectangle{
            id: graph
            width: parent.width
            height: parent.height

            color: fieldsColor;

            Repeater{
                model: 13
                Rectangle {
                    required property int index
                    width: (index%2 == 0)? parent.height * 0.005 : parent.height * 0.01
                    height: parent.height
                    border.width: 0
                    x: index/12 * parent.width - width/2;
                    color: ticksColor
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
                    color: ticksColor
                }
            }

            Canvas{
                id: canvas
                anchors.fill: parent
                onPaint: {
                    var ctx = getContext("2d");
                    ctx.reset();
                    ctx.moveTo(0, 0)
                    ctx.strokeStyle = graphLineColor;
                    ctx.lineWidth = parent.height * 0.015;
                    oldX = 0
                    for( var i = 0; i < taskModel.rowCount(); i++ ) {
                        var widthval = width * taskModel.get(i).duration / commandsList.seconds
                        var heightval = height * (1 - taskModel.get(i).power / 100)
                        ctx.moveTo(oldX, heightval)
                        ctx.lineTo(oldX + widthval, heightval)
                        oldX += widthval
                        oldY = heightval
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

                color: textColor;
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
                color: textColor;
            }
        }
    }

    Text{
        text: "Total time: " + commandsList.seconds + "s"

        height: 0.05 * root.height
        width: 0.68 * root.width

        x: 0.02 * root.width
        y: 0.82 * root.height - height
        font.pointSize: 60
        fontSizeMode: Text.Fit

        color: textColor;
    }

    Rectangle{

        property real seconds: 0

        id: commandsList
        x: 0.76 * root.width
        y: 0.02 * root.height
        width: 0.22 * root.width
        height: 0.5 * root.height
        radius: 0.02 * root.height

        color: fieldsColor;

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
                        color: textColor
                    }
                    Text {
                        Layout.fillWidth: true
                        Layout.preferredWidth: parent.width / 3
                        text: model.duration + "s"
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 20
                        color: textColor
                    }
                    Button {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.preferredWidth: parent.width / 3
                        text: "Delete"
                        onClicked: {
                            commandsList.seconds -= parseFloat(model.duration);
                            taskModel.remove(index)
                            canvas.requestPaint()
                        }

                        background: Rectangle {color: fieldsColor;}
                        palette.buttonText: textColor
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

        placeholderTextColor: placholderTextColor;
        color: textColor

        background: Rectangle {color: fieldsColor;}
    }

    TextField {
        id: duration
        x: 0.76 * root.width
        y: 0.64 * root.height
        width: 0.22 * root.width
        height: 0.08 * root.height
        font.pixelSize: 0.4 * height
        placeholderText: "5 (s)"

        placeholderTextColor: placholderTextColor;
        color: textColor

        background: Rectangle {color: fieldsColor;}
    }

    Item{
        x: 0.76 * root.width
        y: 0.74 * root.height
        width: 0.22 * root.width
        height: 0.08 * root.height

        Button {
            anchors.left: parent.left
            text: "Add Step"
            width: 0.45 * parent.width
            height: parent.height
            font.pixelSize: 0.2 * width
            onClicked: {
                if (power.text !== "") {
                    taskModel.append({ "power" : power.text, "duration": duration.text })
                    commandsList.seconds += parseFloat(duration.text)
                    power.text = ""
                    duration.text = ""
                    canvas.requestPaint()
                }
            }

            background: Rectangle {color: fieldsColor;}
            palette.buttonText: textColor
        }

        Button {
            anchors.right: parent.right
            width: 0.45 * parent.width
            height: parent.height
            font.pixelSize: 0.2 * width
            text: "Run"

            background: Rectangle {color: fieldsColor;}
            palette.buttonText: textColor
        }
    }
}






