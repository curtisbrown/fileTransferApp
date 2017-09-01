import QtQuick 2.2
import QtQuick.Dialogs 1.1

MessageDialog {
    id: messageDialog
    title: "Confirm exit"
    icon: StandardIcon.Question
    text: "Are you sure you want to exit?"
    standardButtons: StandardButton.Yes | StandardButton.No
    onYes: Qt.quit()
    onNo: visible = false
}
