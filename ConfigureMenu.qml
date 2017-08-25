import QtQuick 2.0
import QtQuick.Window 2.1
import QtQuick.Controls 1.4

Window {
    id: root
    width: 300
    height: 200
    property string hostString: ""
    property int portNumber: 0

    Rectangle {
        id: box
        anchors.fill: parent
        color: "lightGrey"

        Column {
            spacing: 10
            width: box.width
            Text {
                width: parent.width
                text: "Please enter the details of the host you wish to send a file to:"
                wrapMode: Text.Wrap
            }

            Row {
                spacing: 10
                Text { text: "Host:" }
                TextField {
                    id: host
                    placeholderText: qsTr("Enter Ip Address")
                }
            }

            Row {
                spacing: 10
                Text { text: "Port:" }

                TextField {
                    id: port
                    placeholderText: qsTr("Enter Port Number")
                }
            }
        }

        Button {
            id : button1
            text: "Confirm"

            anchors.margins: 10
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 10

            onClicked: {
                console.log("Confirm pressed")
                hostString = host.text
                portNumber = port.text
                root.visible = false
            }
        }

        Button {
            id : button2
            text: "Cancel"

            anchors.margins: 10
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.rightMargin: 10

            onClicked: {
                console.log("Cancel pressed")
                hostString = ""
                portNumber = 0
                root.visible = false
            }
        }
    }
}
