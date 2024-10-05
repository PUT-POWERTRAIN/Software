import QtQuick 2.15
import QtQuick.Controls 2.15
//import Qt5Compat.GraphicalEffects
import QtQuick.Shapes

/*
TO DO
- ustawic maksymalny RPM i dopasować do tego ilość kreseczek (wartosc speedMax, i w Itemie "stamps")
- podłączyć backend
- usunąć slider po testach
*/

Rectangle {

    property real angSpeed: 4
    property real speed: 4000
    property real voltage: 12

    property real speedMax: 10000

    property string colorA: "#121529"
    //property string colorB: "#2c75ff"
    property string colorC: "#2cf8f1"

    id: root
    width: 300
    height: 300
    color: "#00343859"

    function mapSpeedToPercent(x) {
        return Math.min(x / root.speedMax, 1);
    }

    function getCircularPosition(centerX, centerY, radius, angle){  //kąt w stopniach, return to [x, y] koordynaty
        var radians = (angle * Math.PI) / 180
        return [centerX + radius * Math.cos(radians), centerY + radius * Math.sin(radians)]
    }

    property int size: Math.min(width, height)

    Item{
        opacity: 1
        visible: true
        anchors.fill: parent
        Shape {
                id: insideGradient
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: 0.8 * root.size
                height: 0.8 * root.size
                opacity: 0

                ShapePath{
                    strokeWidth: 0
                    strokeColor: "transparent"

                    PathAngleArc {
                        radiusX: insideGradient.width / 2
                        radiusY: insideGradient.height / 2
                        centerX: insideGradient.width / 2
                        centerY: insideGradient.height / 2
                        startAngle: 135
                        sweepAngle: 270
                    }
                }
            }
    }

    Item {
        opacity: 1
        anchors.fill: parent

        Canvas {
            id: meterNotFilled
            opacity: 1
            anchors.fill: parent
            onPaint: {
                var ctx = getContext("2d");
                ctx.reset();

                var centreX = width / 2;
                var centreY = height / 2;

                ctx.beginPath();
                ctx.lineCap = "round";
                ctx.strokeStyle = root.colorA;
                ctx.lineWidth = 0.04 * root.size;

                ctx.arc(centreX, centreY, root.size * 0.4, Math.PI * 0.75, Math.PI * 2.25, false);


                ctx.stroke();

            }
        }

        Canvas {
            id: meterFilled
            opacity: 1
            anchors.fill: parent

            onPaint: {
                var ctx = getContext("2d");
                ctx.reset();

                var centreX = width / 2;
                var centreY = height / 2;

                var gradient = ctx.createRadialGradient(centreX, centreY, root.size * 0.38, centreX, centreY, root.size * 0.42);
                gradient.addColorStop(0, root.colorC);
                gradient.addColorStop(1, root.colorB);

                ctx.beginPath();
                ctx.lineCap = "round";
                ctx.strokeStyle = gradient;
                ctx.lineWidth = 0.04 * root.size;
                ctx.arc(centreX, centreY, root.size * 0.4, Math.PI * 0.75, Math.PI * (0.75 + 1.5 * root.mapSpeedToPercent(speed)), false);
                ctx.stroke();
            }
        }

        /* DropShadow{
            opacity: 1
            anchors.fill: meterFilled
            color: root.colorC
            horizontalOffset: 0
            verticalOffset: 0
            radius: 0.04 * root.size
            samples: 8
            source: meterFilled
            cached: true
        } */
    }




    Item{
        id: stamps
        property int numOfStamps: 6
        property int stampsBetween: 10
        property int totalStamps: (stamps.numOfStamps - 1) * stamps.stampsBetween + 1

        Repeater{
            id: mainStamps
            model: stamps.totalStamps

            Rectangle{
                required property int index
                property int offset: (index % stamps.stampsBetween == 0) ? root.size * 0.065 : root.size * 0.05

                antialiasing: true
                height: (index % stamps.stampsBetween == 0) ? root.size * 0.016 : root.size * 0.008
                width: (index % stamps.stampsBetween == 0) ? root.size * 0.06 : root.size * 0.02
                x: getCircularPosition(root.width / 2, root.height / 2, 0.4 * root.size - offset, 135 + 270 * index / (stamps.totalStamps - 1))[0] - width / 2
                y: getCircularPosition(root.width / 2, root.height / 2, 0.4 * root.size - offset, 135 + 270 * index / (stamps.totalStamps - 1))[1] - height / 2
                rotation: 135 + 270 * index / (stamps.totalStamps - 1)

                color: (index % stamps.stampsBetween == 0) ? root.colorB : root.colorC
            }
        }

        Repeater{
            id: numbers
            model: stamps.numOfStamps

            Text {
                required property int index
                text: Math.round(index / (stamps.numOfStamps- 1) * root.speedMax / 1000)
                color: root.colorC
                x: getCircularPosition(root.width / 2, root.height / 2, 0.27 * root.size, 135 + 270 * index / (stamps.numOfStamps - 1))[0] - width / 2
                y: getCircularPosition(root.width / 2, root.height / 2, 0.27 * root.size, 135 + 270 * index / (stamps.numOfStamps - 1))[1] - height / 2
                font.pixelSize: root.size * 0.05
            }
        }
    }

    Item{
        id: values
        opacity: 1
        visible: true
        anchors.fill: parent
        layer.enabled: true
        layer.samples: 4
        Shape{
            id: bottomHalfCircle
            opacity: 1
            anchors.fill: parent
            antialiasing: true

            ShapePath{
                strokeWidth: root.size * 0.01
                strokeColor: root.colorA
                fillColor: Qt.rgba(0.02, 0.05, 0.1, 0.4)
                capStyle: ShapePath.FlatCap
                PathAngleArc {
                    radiusX: root.size * 0.2
                    radiusY: root.size * 0.2
                    centerX: bottomHalfCircle.width / 2
                    centerY: bottomHalfCircle.height / 2
                    startAngle: 190
                    sweepAngle: 160
                }
            }

            ShapePath{
                strokeWidth: root.size * 0.01
                strokeColor: root.colorA
                capStyle: ShapePath.FlatCap
                fillColor: Qt.rgba(0.02, 0.05, 0.1, 0.4)
                PathAngleArc {
                    radiusX: root.size * 0.2
                    radiusY: root.size * 0.2
                    centerX: bottomHalfCircle.width / 2
                    centerY: bottomHalfCircle.height / 2
                    startAngle: 10
                    sweepAngle: 160
                }
            }
        }


    }

    Item{
        opacity: 1
        anchors.fill: values
        layer.enabled: true
        /* layer.effect: OpacityMask {
            maskSource: values
        } */
        Shape{
            id: spinningWheel

            antialiasing: true

            property real angle: 190

            ShapePath{
                strokeWidth: root.size * 0.01
                strokeColor: "red"
                fillColor: "transparent"
                capStyle: ShapePath.FlatCap
                PathAngleArc {
                    radiusX: root.size * 0.2
                    radiusY: root.size * 0.2
                    centerX: bottomHalfCircle.width / 2
                    centerY: bottomHalfCircle.height / 2
                    startAngle: spinningWheel.angle
                    sweepAngle: 30
                }
            }

            ShapePath{
                strokeWidth: root.size * 0.01
                strokeColor: "red"
                fillColor: "transparent"
                capStyle: ShapePath.FlatCap
                PathAngleArc {
                    radiusX: root.size * 0.2
                    radiusY: root.size * 0.2
                    centerX: bottomHalfCircle.width / 2
                    centerY: bottomHalfCircle.height / 2
                    startAngle: spinningWheel.angle + 180
                    sweepAngle: 30
                }
            }
        }
    }



    Rectangle{
        width: root.size * 0.41
        height: root.size * 0.03
        radius: width
        color: root.colorA
        border.width: 0
        border.color: root.colorA
        anchors.horizontalCenter: root.horizontalCenter
        anchors.verticalCenter: root.verticalCenter

        Text {
            id: text1
            //color: root.colorB
            color: "white"
            anchors.bottom: parent.top
            anchors.bottomMargin: root.size * 0.02
            anchors.horizontalCenter: parent.horizontalCenter
            text: Math.round(root.speed) + " RPM"
            font.family: "Digital-7 mono"
            font.wordSpacing: -root.size * 0.02;
            font.pixelSize: root.size * 0.085;
        }

        Text {
            id: volts
            //color: root.colorB
            color: "white"
            anchors.top: parent.bottom
            anchors.topMargin: root.size * 0.02
            anchors.horizontalCenter: parent.horizontalCenter
            text: root.voltage + " V"
            font.family: "Digital-7 mono"
            font.pixelSize: root.size * 0.085;
        }
    }

    Text {
        text: qsTr("x1000 RPM")
        x: getCircularPosition(root.width / 2, root.height / 2, 0.48 * root.size, 400)[0] - width / 2
        y: getCircularPosition(root.width / 2, root.height / 2, 0.48 * root.size, 400)[1] - height / 2
        font.pixelSize: root.size * 0.025
        color: root.colorC
    }

    Timer {
        interval: 10 // 10 ms
        repeat: true // Timer will repeat itself
        running: true

        onTriggered: {
            if (spinningWheel.angle < 360 && spinningWheel.angle >= -360) {
                spinningWheel.angle += root.angSpeed;
            } else {
                spinningWheel.angle = 0; // Reset to 1 when reaching 100
            }
        }
    }

    Slider{
        x: 0.2 * root.width
        y: 0.9 * root.height

        width: 0.6 * root.width

        from: -10000
        value: 4000
        to: 10000

        onMoved: {
            root.speed = Math.abs(Math.round(value));
            root.angSpeed = value / 1000;
            meterFilled.requestPaint();
        }
    }

    /*Timer {
            id: counterTimer
            interval: 10 // 10 ms
            repeat: true // Timer will repeat itself
            running: true // Start the timer automatically

            onTriggered: {
                if (root.speed < 10000) {
                    root.speed += 100;
                    meterFilled.requestPaint();
                } else {
                    root.speed = 0; // Reset to 1 when reaching 100
                }
            }
    }*/

}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/
