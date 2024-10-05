

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

//import QtQuick.Controls.Material 2.15
Rectangle {
    id: controlMenu
    width: 400
    height: 400
    opacity: 1
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
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.leftMargin: menuRectangle.width / 2 - width / 2
    anchors.topMargin: -overviewButton.height * 9

    property int stanzero: 0

    Slider {
        id: slider1
        width: parent.width / 10
        height: parent.height * .6
        value: 0
        enabled: false
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * 0.1
        anchors.topMargin: parent.height * 0.1
        stepSize: 10
        snapMode: RangeSlider.SnapAlways
        rotation: 0
        //palette.handle: "#FFFF00"
        orientation: Qt.Vertical

        Rectangle {
            x: (parent.width - 4) / 2
            y: 7
            width: 4
            height: parent.height * 0.9
            layer.wrapMode: ShaderEffectSource.Repeat
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#000bff"
                }

                GradientStop {
                    position: 1
                    color: "#000351"
                }
                orientation: Gradient.Vertical
            }
            z:0
        }

        handle: Rectangle {
           id: handle1
           implicitWidth: 27
           implicitHeight: 27
           y: slider1.topPadding + slider1.visualPosition * (slider1.availableHeight - height)
           x: slider1.leftPadding + slider1.availableWidth / 2 - width / 2
           radius: 40
           color: "#444444"
           border.color: "#000000"
           z: 1
        }

        Rectangle {
            x: (parent.width - 4) / 2
            y: 7
            width: 4
            height: slider1.visualPosition * parent.height * 0.9
            opacity: 1
            visible: true
            color: "#000000"
        }

        Text {
            id: text1
            x: 56
            y: 7
            color: "#ffffff"
            text: qsTr("%1").arg(slider1.value)
            anchors.right: parent.right
            anchors.rightMargin: -23
            font.pixelSize: 16
        }
        background: Rectangle {
            color: "#00e30000"
            implicitWidth: 40
            implicitHeight: 213
        }
        to: 100
    }

    Slider {
        id: slider2
        width: parent.width / 10
        height: parent.height * .6
        value: 0
        enabled: false
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * 0.3
        anchors.topMargin: parent.height * 0.1
        stepSize: 10
        snapMode: RangeSlider.SnapAlways
        rotation: 0
        orientation: Qt.Vertical

        Rectangle {
            x: (parent.width - 4) / 2
            y: 7
            width: 4
            height: parent.height * 0.9
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#000bff"
                }

                GradientStop {
                    position: 1
                    color: "#000351"
                }
                orientation: Gradient.Vertical
            }
            z:0
        }

        handle: Rectangle {
           id: handle2
           y: slider2.topPadding + slider2.visualPosition * (slider2.availableHeight - height)
           x: slider2.leftPadding + slider2.availableWidth / 2 - width / 2
           implicitWidth: 27
           implicitHeight: 27
           radius: 40
           color: "#444444"
           border.color: "#000000"
           z: 1
        }

        Rectangle {
            x: (parent.width - 4) / 2
            y: 7
            width: 4
            height: slider2.visualPosition * parent.height * 0.9
            color: "#000000"
        }

        Text {
            id: text2
            x: 55
            y: 7
            color: "#ffffff"
            text: qsTr("%1").arg(slider2.value)
            anchors.right: parent.right
            anchors.rightMargin: -23
            font.pixelSize: 16
        }
        background: Rectangle {
            color: "#00e30000"
            implicitWidth: 40
            implicitHeight: 213
        }
        to: 100
    }

    Slider {
        id: slider3
        width: parent.width / 10
        height: parent.height * .6
        value: 0
        enabled: false
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * 0.6
        anchors.topMargin: parent.height * 0.1
        stepSize: 10
        snapMode: RangeSlider.SnapAlways
        rotation: 0
        orientation: Qt.Vertical

        Rectangle {
            x: (parent.width - 4) / 2
            y: 7
            width: 4
            height: parent.height * 0.9
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#000bff"
                }

                GradientStop {
                    position: 1
                    color: "#000351"
                }
                orientation: Gradient.Vertical
            }
            z:0
        }

        handle: Rectangle {
            id: handle3
               y: slider3.topPadding + slider3.visualPosition * (slider3.availableHeight - height)
               x: slider3.leftPadding + slider3.availableWidth / 2 - width / 2
               implicitWidth: 27
               implicitHeight: 27
               radius: 40
               color: "#444444"
               border.color: "#000000"
               z: 1
        }

        Rectangle {
            x: (parent.width - 4) / 2
            y: 7
            width: 4
            height: slider3.visualPosition * parent.height * 0.9
            color: "#000000"
        }

        Text {
            id: text3
            x: 55
            y: 8
            color: "#ffffff"
            text: qsTr("%1").arg(slider3.value)
            anchors.right: parent.right
            anchors.rightMargin: -23
            font.pixelSize: 16
        }
        background: Rectangle {
            color: "#00e30000"
            implicitWidth: 40
            implicitHeight: 213
        }
        to: 100
    }

    Slider {
        id: slider4
        width: parent.width / 10
        height: parent.height * .6
        value: 0
        enabled: false
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * 0.8
        anchors.topMargin: parent.height * 0.1
        stepSize: 10
        snapMode: RangeSlider.SnapAlways
        rotation: 0
        orientation: Qt.Vertical

        Rectangle {
            x: (parent.width - 4) / 2
            y: 7
            width: 4
            height: parent.height * 0.9
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#000bff"
                }

                GradientStop {
                    position: 1
                    color: "#000351"
                }
                orientation: Gradient.Vertical
            }
            z:0
        }

        handle: Rectangle {
            id: handle4
            y: slider4.topPadding + slider4.visualPosition * (slider4.availableHeight - height)
            x: slider4.leftPadding + slider4.availableWidth / 2 - width / 2
            implicitWidth: 27
            implicitHeight: 27
            radius: 40
            color: "#444444"
            border.color: "#000000"
            z: 1
        }

        Rectangle {
            x: (parent.width - 4) / 2
            y: 7
            width: 4
            height: slider4.visualPosition * parent.height * 0.9
            color: "#000000"
        }

        Text {
            id: text4
            x: 54
            y: 8
            color: "#ffffff"
            text: qsTr("%1").arg(slider4.value)
            anchors.right: parent.right
            anchors.rightMargin: -23
            font.pixelSize: 16
        }
        background: Rectangle {
            color: "#00e30000"
            implicitWidth: 40
            implicitHeight: 213
        }
        to: 100
    }

    Button {
        id: buttonTogether
        width: 100
        height: 40
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: controlMenu.width / 2 - width
        anchors.topMargin: controlMenu.height / 2 + 2.5 * height
        checkable: true
        checked: false
        background: Rectangle {
            id: buttonTogetherBack
            color: "#000000"
        }
        contentItem: Text {
            color: "#ffffff"
            text: "Together"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        onClicked:
        {
                buttonSeparate.checked=false
        }
    }

    Button {
        id: buttonSeparate
        width: 100
        height: 40
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: controlMenu.width / 2 - width
        anchors.topMargin: controlMenu.height / 2 + 2.5 * height
        checkable: true
        checked: false
        background: Rectangle {
            id: buttonSeparateBack
            color: "#000000"
        }
        contentItem: Text {
            color: "#ffffff"
            text: "Separate"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        onClicked:
        {
            buttonTogether.checked=false
        }
    }
    states: [
        State {
            name: "Together_checked1"
            when: buttonTogether.checked && buttonSeparate.hovered
            PropertyChanges {
                target: slider1
                value: slider1.value
                enabled: true
            }

            PropertyChanges {
                target: slider2
                value: slider2.value
                enabled: false
            }

            PropertyChanges {
                target: slider3
                value: slider3.value
                enabled: false
            }

            PropertyChanges {
                target: slider4
                value: slider4.value
                enabled: false
            }

            PropertyChanges {
                target: buttonTogetherBack
                color: "#000bff"
            }

            PropertyChanges {
                target: handle1
                color: "#0031ff"
            }

            PropertyChanges {
                target: handle2
                color: "#010064"
            }

            PropertyChanges {
                target: handle3
                color: "#010064"
            }

            PropertyChanges {
                target: handle4
                color: "#010064"
            }

            PropertyChanges {
                target: buttonSeparateBack
                color: "#000681"
            }

        },

        State {
            name: "Separate_checked1"
            when: buttonSeparate.checked && buttonTogether.hovered
            PropertyChanges {
                target: slider1
                value: slider1.value
                enabled: true
            }

            PropertyChanges {
                target: slider2
                value: slider2.value
                enabled: true
            }

            PropertyChanges {
                target: slider3
                value: slider3.value
                enabled: true
            }

            PropertyChanges {
                target: slider4
                value: slider4.value
                enabled: true
            }

            PropertyChanges {
                target: buttonSeparateBack
                color: "#000bff"
            }

            PropertyChanges {
                target: text1
                text: "0"
            }

            PropertyChanges {
                target: handle1
                color: "#0031ff"
            }

            PropertyChanges {
                target: handle2
                color: "#0031ff"
            }

            PropertyChanges {
                target: handle3
                color: "#0031ff"
            }

            PropertyChanges {
                target: handle4
                color: "#0031ff"
            }

            PropertyChanges {
                target: text1
                text: qsTr("%1").arg(slider.value)
            }

            PropertyChanges {
                target: buttonTogetherBack
                color: "#000681"
            }

        },

        State {
            name: "Together_checked"
            when: buttonTogether.checked

            PropertyChanges {
                target: slider1
                enabled: true
                value: slider1.value
            }

            PropertyChanges {
                target: slider2
                enabled: false
                value: slider1.value
            }

            PropertyChanges {
                target: slider3
                enabled: false
                value: slider1.value
            }

            PropertyChanges {
                target: slider4
                enabled: false
                value: slider1.value
            }

            PropertyChanges {
                target: buttonSeparate
                checked: false
            }

            PropertyChanges {
                target: buttonTogetherBack
                color: "#000bff"
            }

            PropertyChanges {
                target: handle1
                color: "#0031ff"
            }

            PropertyChanges {
                target: handle2
                color: "#010064"
            }

            PropertyChanges {
                target: handle3
                color: "#010064"
            }

            PropertyChanges {
                target: handle4
                color: "#010064"
            }

        },

        State {
            name: "Separate_checked"
            when: buttonSeparate.checked

            PropertyChanges {
                target: slider1
                enabled: true
                value: slider1.value
            }

            PropertyChanges {
                target: slider2
                enabled: true
                value: slider2.value
            }

            PropertyChanges {
                target: slider3
                enabled: true
                value: slider3.value
            }

            PropertyChanges {
                target: slider4
                enabled: true
                value: slider4.value
            }

            PropertyChanges {
                target: buttonTogether
                checked: false
            }

            PropertyChanges {
                target: buttonSeparateBack
                color: "#000bff"
            }

            PropertyChanges {
                target: text1
                text: "0"
            }

            PropertyChanges {
                target: handle1
                color: "#0031ff"
            }

            PropertyChanges {
                target: handle2
                color: "#0031ff"
            }

            PropertyChanges {
                target: handle3
                color: "#0031ff"
            }

            PropertyChanges {
                target: handle4
                color: "#0031ff"
            }

            PropertyChanges {
                target: text1
                text: qsTr("%1").arg(slider.value)
            }

        },

        State {
            name: "Together_hovered"
            when: buttonTogether.hovered
            PropertyChanges {
                target: buttonTogetherBack
                color: "#000681"
            }
        },

        State {
            name: "Separate_hovered"
            when: buttonSeparate.hovered
            PropertyChanges {
                target: buttonSeparateBack
                color: "#000681"
            }
        }]
}



