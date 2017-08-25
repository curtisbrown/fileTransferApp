import QtQuick 2.0

Rectangle {
    id: button
    property alias image: icon.source
    property alias text: buttonText.text
    signal clicked

    width: icon.width
    height: icon.height

    border.color: "black"

    Image {
        id: icon
        anchors.centerIn: parent
        source: "images/default.png"
        sourceSize.width: 75
        sourceSize.height: 75
    }

    Text {
        width: icon.width
        anchors.top: icon.bottom
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.Wrap
        id: buttonText
        text: "default"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: button.clicked()
    }
}
