import QtGraphicalEffects 1.15
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3

Rectangle {
    id: messageBox

    property string message: ""
    property int logoHeight: 45

    width: col.width
    height: 40
    color: "transparent"

    RowLayout {
        anchors.fill: parent
        Layout.alignment: Qt.AlignLeft
        spacing: 15

        Image {
            id: logo

            Layout.preferredHeight: logoHeight
            Layout.preferredWidth: logoHeight
            source: "29502264.png"
            visible: false
        }

        OpacityMask {
            Layout.preferredHeight: logoHeight
            Layout.preferredWidth: logoHeight
            source: logo

            maskSource: Rectangle {
                width: logo.width
                height: logo.height
                radius: 1e+08
                visible: false
            }

        }
        ColumnLayout {
            spacing: 1

            Text {
                id: author

                text: "Alve"
                color: "white"
            }

            Text {
                id: messageText

                text: message
                color: "white"
            }


        }


        Item {
            Layout.fillWidth: true
        }

    }

}
