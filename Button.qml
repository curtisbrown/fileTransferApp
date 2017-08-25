import QtQuick 2.0

Rectangle {
    id: button
    property alias text: buttonText.text
    signal clicked
    width: 100
    height: 25

    Text {
        anchors.centerIn: parent
        wrapMode: Text.WordWrap
        id: buttonText
        text: "default text"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: button.clicked()
    }
}
