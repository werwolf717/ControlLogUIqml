import QtQuick 2.12
import ControlLogUI 1.0

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        text: qsTr("First Page")
        anchors.centerIn: parent
        font.family: Constants.font.family
    }
}
