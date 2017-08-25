import QtQuick 2.0

Rectangle {
    id: object
    color: "red"
    width: 100
    height: 50

    property alias text: text.text

    Text {
        id: text
        anchors.centerIn: parent
    }
}
