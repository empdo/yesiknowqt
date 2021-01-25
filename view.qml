import QtQuick 2.12
import QtQuick.Controls 2.12
import "myJsScript.js" as MyScript

Page {
    Rectangle {
        anchors.fill: parent
        color: "#3f3f49"

        Column {
            id: col

            anchors.fill: parent
            anchors.margins: 5
            spacing: 5

            Column {
                id: listContainer

                spacing: 10
            }

        }

    }

    footer: Rectangle {
        id: footer

        width: parent.width
        height: 25
        border.color: gray
        border.width: 1

        TextInput {
            id: txtPlain

            anchors.fill: parent
            anchors.margins: 4
            onEditingFinished: {
                MyScript.createSpriteObjects(txtPlain.text);
                txtPlain.text = "";
            }
        }

    }

}
