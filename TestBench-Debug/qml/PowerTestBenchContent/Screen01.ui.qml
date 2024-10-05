/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.7
import QtQuick.Controls 6.7
import PowerTestBench

Rectangle {
    id: screenUI
    // width: mainWindow.width
    // height: mainWindow.height
    width: 1920
    height: 1080
    gradient: Gradient {
        GradientStop {
            position: 0.0307
            color: "#191919"
        }

        GradientStop {
            position: 0.42105
            color: "#001323"
        }

        GradientStop {
            position: 0.76754
            color: "#001c33"
        }

        GradientStop {
            position: 1
            color: "#00233e"
        }

        orientation: Gradient.Vertical
    }

    Item {
        id: __materialLibrary__
    }


    states: [
        State {
            name: "clicked"
        }
    ]
}
