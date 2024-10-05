/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components

Item {
    id: root
    width: 400
    height: 200

    RoundButton {
        id: roundButtonMinus
        width: parent.width/2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        palette.button: "#232323"
        Rectangle {
            id: rectangle
            width: parent.width/2
            height: parent.height*0.025
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2-width/2
            anchors.bottomMargin: parent.height/2 - height/2
        }



    }

    RoundButton {
        id: roundButtonPlus
        width: parent.width/2
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        palette.button: "#232323"
        Rectangle {
            id: rectangle1
            y: 98
            width: parent.width/2
            height: parent.height*0.025
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2-width/2
            anchors.bottomMargin: parent.height/2 - height/2
        }
        Rectangle {
            id: rectangle2
            y: 98
            width: parent.width/2
            height: parent.height*0.025
            color: "#ffffff"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2-width/2
            anchors.bottomMargin: parent.height/2 - height/2
            rotation: 90

        }
    }
    states: [
        State {
            name: "MinusHovered"
            when: roundButtonMinus.hovered

            PropertyChanges {
                target: roundButtonMinus
                palette.button: "#111111"
            }
        },

        State {
            name: "MinusPressed"
            when: roundButtonMinus.pressed
            PropertyChanges {
                target: roundButtonMinus
                palette.button: "#black"
            }
        },
        State {
            name: "PlusHovered"
            when: roundButtonPlus.hovered

            PropertyChanges {
                target: roundButtonPlus
                palette.button: "#111111"
            }
        },

        State {
            name: "PlusPressed"
            when: roundButtonPlus.pressed
            PropertyChanges {
                target: roundButtonPlus
                palette.button: "#black"
            }
        }
    ]
}
