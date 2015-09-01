import QtQuick 2.0
//import "../common"
// This create a new ListView

Rectangle {
    width: 80
    height: 300
//    visible: false

    ListView {
        anchors.fill: parent
        anchors.margins: 20

        clip: true

        model: 100

        delegate: numberDelegate
        spacing: 5
    }

    Component {
        id: numberDelegate

        Rectangle {
            id: delegate
            color: "blue"


            anchors {
                centerIn: parent
                fill: parent
            }

            width: 40
            height: 40
//            text: index
            Text {
                id: name
                text: index
            }
        }
    }
}
