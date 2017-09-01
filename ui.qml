import QtQuick 2.1;
import QtQuick.Controls 1.4;
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.1;

ApplicationWindow {
    id: root
    property variant win;
    visible: true
    width: 640
    height: 480
    title: qsTr("File Transfer")

    // Background
    Rectangle {
        anchors.fill: parent
        Image {
            id: background
            anchors.centerIn: parent
            width: root.width
            height:root.height
            fillMode: Image.PreserveAspectFit
            source: "images/windowsToUbuntu1.png"
            opacity: 0.6
        }
    }

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem { text: "Open..." }
            MenuItem {
                text: "Exit"
                onTriggered: quit.open()
            }
        }

        Menu {
            title: "Edit"
            MenuItem {
                text: "Cut"
                shortcut: "Ctrl+X"
                onTriggered: console.log("HI")
            }
            MenuItem {
                text: "Copy"
                shortcut: "Ctrl+C"
                onTriggered: console.log("HI")
            }
            MenuItem {
                text: "Paste"
                shortcut: "Ctrl+V"
                onTriggered: console.log("HI")
            }
        }

        Menu {
            title: "Help"
            MenuItem {
                text: "About"
                onTriggered: {
                    //about.open()
                    var component = Qt.createComponent("Popup.qml");
                    if (component.status === Component.Ready) {
                        var dialog = component.createObject(root,{popupType: 2});
                        //dialogConnection.target = dialog
                        dialog.show();
                    }
                }
            }
        }
    }

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
    MessageDialog { id: quit }
}
