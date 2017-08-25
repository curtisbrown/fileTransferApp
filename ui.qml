import QtQuick 2.1;
import QtQuick.Window 2.1;

Window {
    id: root
    property variant win;
    visible: true
    width: 640
    height: 480
    title: qsTr("File Transfer")

    /* Jimmy Tutorial for Flickable list and advanced feature of QML
    FlickableList {
        anchors.centerIn: parent
        height: parent.height - 10

        Repeater {
            model: 50
            delegate:
                SubObject {text: index}
        }
    } */

    Row {
      spacing: 10
      anchors.centerIn: parent


      ButtonWithImage {
          id: configureHost
          image: "images/configure.png"
          text: "Configure Transfer"

          onClicked: {
              console.log("Configure transfer clicked")
              var component = Qt.createComponent("ConfigureMenu.qml");
              win = component.createObject(root);
              win.show();
          }
      }

      ButtonWithImage {
          id: selectFile
          image: "images/selectFile.png"
          text: "Select file"

          onClicked: {
              console.log("Select File clicked")
              files.open()
          }
      }

      ButtonWithImage {
          id: sendFile
          image: "images/sendFile.png"
          text: "Send file"

          onClicked: console.log("Send File clicked")
      }

    }

    FileBrowser { id: files }
}
