import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Changing ")
    width: 640
    height: 480
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File ...")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        id: mainForm

        anchors.fill: parent
        button1.onClicked: messageDialog.show("charging ...")
//            mainForm.visible = false
//            myListView.visible = true

//        button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
//        button3.onClicked: messageDialog.show(qsTr("Button 3 pressed"))
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }

//    ListView1 {
//        id: myListView
//        visible: false
//    }
}
