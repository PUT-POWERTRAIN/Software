import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {

    property real batteryPercent: 0.03; //must be between 0-1

    id: root
    width: 100
    height: 100
    color: "#ffffff"
    opacity: 1

    Rectangle {
        id: batterySpace
        width: root.width * 0.8
        height: root.height * 0.4
        border.width: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            id: batteryBar
            width: parent.width*0.9
            height: parent.height
            anchors.left: parent.left
            border.width: 0.02 * root.width
            radius: 0.06 * root.width
            color: "transparent"

            Rectangle{


                property real red
                property real green
                property real blue

                function mapColour (percent){
                    var balance = Math.round(percent * 510);
                    var green = Math.min(255, balance)/255;
                    var red = Math.min(255, 510 - balance)/255;
                    var blue = 0;
                    return [red, green, blue];
                }

                id: batteryGraphicalLevel
                height: parent.height - 2*parent.border.width
                width: (parent.width - 2*parent.border.width) * batteryPercent
                radius: parent.radius - parent.border.width
                border.width: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: parent.border.width
                color: Qt.rgba(mapColour(root.batteryPercent)[0], mapColour(root.batteryPercent)[1], mapColour(root.batteryPercent)[2], 1)
                z: -1
            }

            Text {
                id: name
                text: Math.round(100 * root.batteryPercent) + " %"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.pointSize: 0.4 * parent.height
            }
        }

        Rectangle {
            id: batteryHead
            width: parent.width * 0.1
            height: parent.height * 0.6
            border.width: 0.01 * root.width
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            color: "black"
            radius: 0.1 * root.width

            Rectangle {
                id: batteryHeadCover
                width: 0.5 * parent.width
                height: parent.height
                border.width: 0.01 * root.width
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                color: "black"
                radius: 0.01 * root.width
            }
        }
    }
}
