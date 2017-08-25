import QtQuick 2.0

Rectangle {
    width: column.width
    height: column.height
    border.width: 1
    border.color: "black"
    clip: true
    default property alias contents: column.children

    Flickable {
        anchors.fill: parent
        anchors.margins: parent.border.width + 10
        contentWidth: column.width
        contentHeight: column.height
        flickableDirection: Flickable.VerticalFlick

        Column {
            id: column
            spacing: 10
        }
    }
}


