/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Studio.Components

Rectangle {
    id: root
    width: 1000
    height: 75
    color: "#303030"

    Button {
        id: overviewButton
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        checkable: true
        display: AbstractButton.IconOnly
        width: parent.width / 5
        Connections {
            target: overviewButton
            onClicked: mainWindow.showOverviewMenu()
        }
        background: Rectangle {
            id: overviewButtonBack
            //color: "#232323"
            gradient: defaultBackground.gradient
        }
        contentItem: Row {
            id: overviewContent
            anchors.fill: parent
            spacing: 0  // Odstęp pomiędzy ikoną a tekstem
            Image {
                id: overviewButtonIcon
                height: root.parent.height
                source: "../speedometer.png"  // Ścieżka do ikony
                anchors.left: root.parent.left
                anchors.right: root.parent.right
                anchors.top: root.parent.top
                anchors.bottom: root.parent.bottom
                anchors.rightMargin: 100
                anchors.bottomMargin: 0
            }
            Text {
                id: overviewButtonText
                color: "#ffffff"
                text: "Overview"
                anchors.fill: parent
                font.pointSize: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Button {
        id: controlButton
        width: parent.width / 5
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: parent.width / 5
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        checkable: true
        Connections {
            target: controlButton
            onClicked: mainWindow.showControlMenu()
        }
        background: Rectangle {
            id: controlButtonBack
            gradient: defaultBackground.gradient
        }
        contentItem: Row {
            id: controlButtonContent
            anchors.fill: parent
            spacing: 0  // Odstęp pomiędzy ikoną a tekstem
            Image {
                id: controlButtonIcon
                height: parent.height
                source: "../settings (2).png"  // Ścieżka do ikony
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 100
                anchors.bottomMargin: 0
            }
            Text {
                id: controlButtonText
                color: "#ffffff"
                text: "Control"
                anchors.fill: parent
                font.pointSize: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
    Button {
        id: dataButton
        width: parent.width / 5
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: parent.width / 5 + width
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        checkable: true
        Connections {
            target: dataButton
            onClicked: mainWindow.showDataMenu()
        }
        background: Rectangle {
            id: dataButtonBack
            gradient: defaultBackground.gradient
        }
        contentItem: Row {
            id: dataButtonContent
            anchors.fill: parent
            spacing: 0  // Odstęp pomiędzy ikoną a tekstem
            Image {
                id: dataButtonIcon
                height: parent.height
                source: "../data.png"  // Ścieżka do ikony
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 100
                anchors.bottomMargin: 0
            }
            Text {
                id: dataButtonText
                color: "#ffffff"
                text: "Data"
                anchors.fill: parent
                font.pointSize: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

    }

    Button {
        id: studyButton
        width: parent.width / 5
        text: qsTr("Button")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: parent.width / 5 + 2*width
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        checkable: true
        Connections{
            target: studyButton
            onClicked: mainWindow.showStudyMenu()
        }
        background: Rectangle {
            id: studyButtonBack
            gradient: defaultBackground.gradient
        }
        contentItem: Row {
            id: studyButtonContent
            anchors.fill: parent
            spacing: 0  // Odstęp pomiędzy ikoną a tekstem
            Image {
                id: studyButtonIcon
                height: parent.height
                source: "../analisys (4).png"
                sourceSize.width: 32
                sourceSize.height: 32  // Ścieżka do ikony
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 100
                anchors.bottomMargin: 0
            }
            Text {
                id: studyButtonText
                color: "#ffffff"
                text: "Study"
                anchors.fill: parent
                font.pointSize: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Button {
        id: settingsButton
        width: parent.width / 5
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: parent.width / 5 + 3*width
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        checkable: true
        background: Rectangle {
            id: settingsButtonBack
            gradient: defaultBackground.gradient
        }
        contentItem: Row {
            id: settingsButtonContent
            anchors.fill: parent
            spacing: 0  // Odstęp pomiędzy ikoną a tekstem
            Image {
                id: settingsButtonIcon
                height: parent.height
                source: "../setting.png"
                sourceSize.width: 32
                sourceSize.height: 32  // Ścieżka do ikony
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 100
                anchors.bottomMargin: 0
            }
            Text {
                id: settingsButtonText
                color: "#ffffff"
                text: "Settings"
                anchors.fill: parent
                font.pointSize: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }


    Rectangle {
        id: defaultBackground
        visible: false
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0.44737
                color: "#191818"
            }

            GradientStop {
                position: 0
                color: "#2e2e2e"
            }

            orientation: Gradient.Vertical
            GradientStop {
                position: 0.9693
                color: "#202020"
            }
        }
    }

    Rectangle {
        id: hoverBackground
        visible: false
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0.44737
                color: "#000000"
            }

            GradientStop {
                position: 0
                color: "#2e2e2e"
            }

            orientation: Gradient.Vertical
            GradientStop {
                position: 0.9693
                color: "#202020"
            }
        }
    }

    Rectangle {
        id: menuRectangle
        color: "#00000000"
        border.color: "#434343"
        anchors.fill: parent
    }

    Item {
        id: __materialLibrary__
    }



    states: [
        State {
            name: "StudyHover"
            when: studyButton.hovered

            PropertyChanges {
                target: studyButtonBack
                gradient: hoverBackground.gradient
            }
        },

        State {
            name: "OverviewPressed"
            when: overviewButton.pressed
            PropertyChanges {
                target: overviewButtonBack
                color: "#black"
            }
        },

        State {
            name: "DataHover"
            when: dataButton.hovered

            PropertyChanges {
                target: dataButtonBack
                gradient: hoverBackground.gradient
            }

        },

        State {
            name: "OverviewHover"
            when: overviewButton.hovered

            PropertyChanges {
                target: overviewButtonBack
                gradient: hoverBackground.gradient
            }

        },

        State {
            name: "ControlPressed"
            when: controlButton.pressed
            PropertyChanges {
                target: controlButtonBack
                color: "#black"
            }
        },

        State {
            name: "ControlHovered"
            when: controlButton.hovered

            PropertyChanges {
                target: controlButtonBack
                gradient: hoverBackground.gradient
            }

        },

        State {
            name: "DataPressed"
            when: dataButton.pressed
            PropertyChanges {
                target: dataButtonBack
                color: "#black"
            }
        },

        State {
            name: "StudyPressed"
            when: studyButton.pressed
            PropertyChanges {
                target: studyButtonBack
                color: "#black"
            }
        },
        State {
            name: "SettingsPressed"
            when: settingsButton.pressed
            PropertyChanges {
                target: settingsButtonBack
                color: "#black"
            }
        },

        State {
            name: "SettingsHovered"
            when: settingsButton.hovered

            PropertyChanges {
                target: settingsButtonBack
                gradient: hoverBackground.gradient
            }
        }]
}



/*##^##
Designer {
    D{i:0;formeditorColor:"#00000c"}
}
##^##*/
