import QtQuick 2.15
import QtQuick.Controls 2.15
Rectangle {
    id: saveType
    width: 350
    height: 200
    border.color: "grey"
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

    Text {
        id: instructionText
        width: 323
        height: 40
        color: "#ffffff"
        text: qsTr("Choose the desired file type:")
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenterOffset: -26
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "Segoe UI"
        font.italic: false
        font.bold: false
    }

    Button {
        id: buttonTxt
        y: 127
        width: 116
        height: 53
        anchors.left: parent.left
        anchors.leftMargin: 50
        background: Rectangle {
            id: buttonTxtBack
            color: "#000000"
        }
        contentItem: Text {
            color: "#ffffff"
            text: ".txt"
            anchors.fill: parent
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Button {
        id: buttonXlsx
        x: 49
        y: 127
        width: 116
        height: 53
        anchors.right: parent.right
        anchors.rightMargin: 50
        background: Rectangle {
            id: buttonXlsxBack
            color: "#000000"
        }
        contentItem: Text {
            color: "#ffffff"
            text: ".xlsx"
            anchors.fill: parent
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    // ExitButton {
    //     id: buttonExit
    //     width: 45
    //     height: 45
    //     anchors.right: parent.right
    //     anchors.top: parent.top
    //     anchors.rightMargin: 1
    //     anchors.topMargin: 1
    //     Connections {
    //         target: buttonExit
    //         onClicked: dataMenu.dataMenu_saveType_close()
    //     }
    // }

    Button
    {
        id: buttonExit
        width: parent.width/7.5
        height: width
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 1
        anchors.topMargin: 1
        background: Rectangle {
            id: buttonExitBack
            color: "#000000"
        }
        Connections {
            target: buttonExit
            onClicked: dataMenu.dataMenu_saveType_close()
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
            rotation: 45
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
            rotation: 135
        }
    }

    states: [
        State {
            name: "buttonTxt_hovered"
            when: buttonTxt.hovered
            PropertyChanges
            {
                target: buttonTxtBack
                color: "#000681"
            }
        },
        State {
            name: "buttonXlsx_hovered"
            when: buttonXlsx.hovered
            PropertyChanges
            {
                target: buttonXlsxBack
                color: "#000681"
            }
        },
        State {
            name: "buttonExit_hovered"
            when: buttonExit.hovered
            PropertyChanges
            {
                target: buttonExitBack
                color: "#000681"
            }
        }
    ]

}
