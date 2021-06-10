import QtQuick 2.12
import ControlLogUI 1.0
import QtQuick.Controls 2.15
import QtQuick.Studio.Effects 1.0
import Qt.SafeRenderer 1.1
import QtQuick.Studio.MultiText 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.LogicHelper 1.0
import QtQuick.Studio.Components 1.0
import QtQuick3D 1.15

Rectangle {
    id: rectangle
    width: Constants.login_width
    height: Constants.login_height

    color: Constants.backgroundColor
    enabled: true
    layer.enabled: true

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        enabled: false
        layer.enabled: true
        anchors.rightMargin: 5
        transformOrigin: Item.Center
        rows: 4
        columns: 1

        RowLayout {
            id: rowLayout
            Layout.fillWidth: true
            Layout.fillHeight: false

            Label {
                id: label
                text: qsTr("Login")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                textFormat: Text.AutoText
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.leftMargin: 5
                Layout.rightMargin: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            TextField {
                id: textField
                visible: true
                horizontalAlignment: Text.AlignHCenter
                enabled: true
                activeFocusOnTab: true
                clip: false
                hoverEnabled: true
                Layout.minimumWidth: 240
                Layout.maximumWidth: 240
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                placeholderText: qsTr("Enter user name")
            }
        }

        RowLayout {
            id: rowLayout1
            Layout.fillWidth: true
            Layout.fillHeight: false

            Label {
                id: label1
                text: qsTr("Password")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.leftMargin: 5
                Layout.rightMargin: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            TextField {
                id: textField1
                text: ""
                horizontalAlignment: Text.AlignHCenter
                clip: false
                font.strikeout: false
                renderType: Text.QtRendering
                Layout.minimumWidth: 240
                Layout.maximumWidth: 240
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                placeholderText: qsTr("Enter password")
                echoMode: "Password"
            }
        }

        RowLayout {
            id: rowLayout2
            Layout.fillWidth: true
            Layout.fillHeight: false

            Label {
                id: label2
                text: qsTr("Database")
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                Layout.minimumWidth: 0
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.leftMargin: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                rightPadding: 5
            }

            ComboBox {
                id: comboBox
                Layout.minimumWidth: 240
                Layout.maximumWidth: 240
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        RowLayout {
            id: rowLayout3
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.fillHeight: true

            Button {
                id: button
                text: qsTr("Ok")
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                Layout.fillHeight: false
                Layout.fillWidth: false
            }

            Button {
                id: button1
                text: qsTr("Cancel")
                Layout.fillHeight: false
            }
        }

        BusyIndicator {
            id: busyIndicator
            anchors.fill: parent
            rightPadding: 20
            bottomPadding: 20
            topPadding: 20
            leftPadding: 20
        }
    }
}
