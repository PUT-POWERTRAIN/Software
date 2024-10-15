import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components

Rectangle {
    id: root
    width: 300
    height: 300
    color: "#00000000"

    RoundButton {
        id: minusButton
        width: parent.width/4
        height: width
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width/4-width/2
        anchors.topMargin: parent.height/6
        palette.button: "#232323"
        Connections {
            target: minusButton
            onClicked: mainWindow.zoomOut()
        }
        Rectangle {
            id: rectangle
            width: parent.width*.6
            height: parent.height*.05
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2 - width/2
            anchors.bottomMargin: parent.height/2 - height/2
        }
    }
    RoundButton {
        id: plusButton
        width: parent.width/4
        height: width
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width/4+width/2
        anchors.topMargin: parent.height/6
        palette.button: "#232323"
        Connections {
            target: plusButton
            onClicked: mainWindow.zoomIn()
        }
        Rectangle {
            id: rectangle1
            width: parent.width*.6
            height: parent.height*.05
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2 - width/2
            anchors.bottomMargin: parent.height/2 - height/2
        }
        Rectangle {
            id: rectangle2
            width: parent.width*.6
            height: parent.height*.05
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2 - width/2
            anchors.bottomMargin: parent.height/2 - height/2
            rotation: 90
        }
    }
    RoundButton {
        id: leftButton
        width: parent.width/4
        height: width
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width/4-width/2
        anchors.topMargin: parent.height/2
        palette.button: "#232323"
        Connections{
            target: leftButton
            onClicked: mainWindow.cameraToLeft()
        }
        Rectangle {
            id: rectangle3
            width: parent.width*.4
            height: parent.height*.05
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2 - width/2
            anchors.bottomMargin: parent.height/3 - height/2
            rotation: 45
        }
        Rectangle {
            id: rectangle4
            width: parent.width*.4
            height: parent.height*.05
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2 - width/2
            anchors.bottomMargin: parent.height*0.6 - height/2
            rotation: -45
        }
    }
    RoundButton {
        id: rightButton
        width: parent.width/4
        height: width
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width/4+width/2
        anchors.topMargin: parent.height/2
        palette.button: "#232323"
        Connections{
            target: rightButton
            onClicked: mainWindow.cameraToRight()
        }
        Rectangle {
            id: rectangle5
            width: parent.width*.4
            height: parent.height*.05
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2 - width/2
            anchors.bottomMargin: parent.height/3 - height/2
            rotation: 135
        }
        Rectangle {
            id: rectangle6
            width: parent.width*.4
            height: parent.height*.05
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2 - width/2
            anchors.bottomMargin: parent.height*0.6 - height/2
            rotation: -135
        }
    }
    RoundButton {
        id: directionReset
        width: parent.width/4
        height: width
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width/2+width/2
        anchors.topMargin: parent.height/2
        palette.button: "#232323"

        Image {
            id: rotateleftcirculararrowinterfacesymbol2
            width: parent.width * 0.7
            height: parent.height * 0.7
            anchors.verticalCenter: parent.verticalCenter

            source: "images/rotate-left-circular-arrow-interface-symbol.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit

        }

        Connections{
            target: directionReset
            onClicked: mainWindow.cameraReset()
        }
    }
    RoundButton {
        id: zReset
        width: parent.width/4
        height: width
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width/2+width/2
        anchors.topMargin: parent.height/6
        palette.button: "#232323"

        Image {
            id: rotateleftcirculararrowinterfacesymbol
            width: parent.width * 0.7
            height: parent.height * 0.7
            anchors.verticalCenter: parent.verticalCenter

            source: "images/rotate-left-circular-arrow-interface-symbol.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit

        }
        Connections{
            target: zReset
            onClicked: mainWindow.zoomReset()
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/
