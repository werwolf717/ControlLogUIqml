import QtQuick 2.12
import ControlLogUI 1.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.MultiText 1.0
import QtQuick.Studio.LogicHelper 1.0
import Qt.SafeRenderer 1.1
import QtQuick3D 1.15
import QtQuick 2.15

Rectangle {
    width: Constants.width
    height: Constants.height
    opacity: 1
    color: Constants.backgroundColor

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows: 2
        columns: 1

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true

            Label {
                id: label
                text: qsTr("ПО Журнал контроля, ")
                //  anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                bottomPadding: 2
                rightPadding: 2
                leftPadding: 2
                topPadding: 10
                font.pointSize: 16
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: false
                Layout.fillWidth: false
            }

            Label {
                id: label1
                text: qsTr("-")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                rightPadding: 2
                bottomPadding: 2
                leftPadding: 2
                topPadding: 10
                font.pointSize: 16
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: false
                Layout.fillWidth: false
            }
        }

        ColumnLayout {
            id: columnLayout
            width: 100
            height: 100
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rightMargin: 10
            Layout.leftMargin: 10

            TabBar {
                id: tabBar
                height: 50


                /*  anchors.left: stackLayout.left
                anchors.right: stackLayout.right
                anchors.bottom: stackLayout.top*/
                rightPadding: 20
                leftPadding: 20
                font.capitalization: Font.MixedCase
                Layout.rightMargin: 0
                Layout.leftMargin: 0
                Layout.fillWidth: true
                Layout.fillHeight: false
                TabButton {
                    text: "Журнал контроля"
                    font.pointSize: 14
                    display: AbstractButton.TextBesideIcon
                }

                TabButton {
                    text: "Справочник оборудования"
                    font.capitalization: Font.MixedCase
                    font.hintingPreference: Font.PreferDefaultHinting
                    font.kerning: true
                    font.preferShaping: true
                    font.pointSize: 14
                }
            }

            StackLayout {
                id: stackLayout
                width: 100
                height: 100
                Layout.fillHeight: true
                Layout.fillWidth: true
                currentIndex: tabBar.currentIndex

                Rectangle {
                    id: rectangle1
                    width: 200
                    height: 200
                    visible: false
                    color: "#ffffff"
                    Layout.preferredHeight: -1
                    Layout.preferredWidth: -1
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    RowLayout {
                        id: rowLayout1
                        anchors.fill: parent

                        Rectangle {
                            id: rectangle2
                            width: 200
                            height: 200
                            color: "#ffffff"
                            border.width: 0
                            Layout.rightMargin: 12
                            Layout.margins: 25
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            ColumnLayout {
                                id: columnLayout1
                                anchors.fill: parent
                                spacing: -1.5

                                Rectangle {
                                    id: rectangle4
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.preferredHeight: 100
                                    Layout.preferredWidth: -1
                                    Layout.columnSpan: 1
                                    Layout.rowSpan: 1
                                    Layout.fillHeight: false
                                    Layout.fillWidth: true

                                    RowLayout {
                                        id: rowLayout2
                                        width: 100
                                        height: 100

                                        RadioButton {
                                            id: radioButton
                                            text: qsTr("Считыватель")
                                            font.pointSize: 12
                                            checked: true
                                            Layout.fillHeight: false
                                            Layout.fillWidth: false
                                            Layout.leftMargin: 25
                                        }

                                        RadioButton {
                                            id: radioButton1
                                            text: qsTr("Генератор азота")
                                            font.pointSize: 12
                                            Layout.fillWidth: false
                                        }
                                    }
                                }

                                Rectangle {
                                    id: rectangle5
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.columnSpan: 1
                                    Layout.preferredHeight: 100
                                    Layout.fillHeight: false
                                    Layout.fillWidth: true

                                    RowLayout {
                                        id: rowLayout3
                                        width: 100
                                        height: 100

                                        Label {
                                            id: label2
                                            text: qsTr("Помещение")
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            font.pointSize: 12
                                            Layout.leftMargin: 25
                                        }

                                        ComboBox {
                                            id: comboBox
                                            Layout.preferredWidth: 250
                                            Layout.rightMargin: 0
                                            Layout.fillWidth: false
                                        }
                                    }
                                }

                                Rectangle {
                                    id: rectangle6
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.preferredHeight: -1
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true

                                    ColumnLayout {
                                        id: columnLayout2
                                        anchors.fill: parent
                                        spacing: 0

                                        Label {
                                            id: label3
                                            text: qsTr("Допустимые пределы по справочнику")
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            font.pointSize: 12
                                            Layout.topMargin: 20
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            Layout.leftMargin: 25
                                            Layout.fillWidth: false
                                        }

                                        GridLayout {
                                            id: gridLayout1
                                            width: 100
                                            height: 100
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            columnSpacing: -2
                                            Layout.margins: 15
                                            rows: 5
                                            columns: 3
                                            Layout.fillHeight: false
                                            Layout.fillWidth: true

                                            Rectangle {
                                                id: rectangle10
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 0
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                            }

                                            Rectangle {
                                                id: rectangle8
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillHeight: false
                                                Layout.fillWidth: false

                                                Label {
                                                    id: label5
                                                    color: "#ea0000"
                                                    text: qsTr("ниж. предел")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignHCenter
                                                    verticalAlignment: Text.AlignVCenter
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle9
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.fillHeight: false
                                                Layout.preferredHeight: 30

                                                Label {
                                                    id: label6
                                                    color: "#ea0000"
                                                    text: qsTr("верх. предел")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignHCenter
                                                    verticalAlignment: Text.AlignVCenter
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle11
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.leftMargin: 0
                                                Layout.preferredHeight: 30
                                                Layout.fillHeight: false
                                                Layout.fillWidth: true

                                                Label {
                                                    id: label7
                                                    text: qsTr("Напряжение ФЭУ А, В")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    font.pointSize: 12
                                                    anchors.leftMargin: 15
                                                    leftInset: 0
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle12
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillHeight: false
                                                Layout.fillWidth: false

                                                Label {
                                                    id: label11
                                                    text: qsTr("Test label")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignHCenter
                                                    verticalAlignment: Text.AlignVCenter
                                                    layer.enabled: true

                                                    Connections {
                                                        target: label11
                                                        /* function onClicked()
                                                        {

                                                        }*/
                                                    }
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle13
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false
                                            }

                                            Rectangle {
                                                id: rectangle14
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false

                                                Label {
                                                    id: label8
                                                    text: qsTr("Напряжение ФЭУ В, В")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle15
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false
                                            }

                                            Rectangle {
                                                id: rectangle16
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false
                                            }

                                            Rectangle {
                                                id: rectangle17
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false

                                                Label {
                                                    id: label9
                                                    text: qsTr("Температура блока питания, С")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle18
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false
                                            }

                                            Rectangle {
                                                id: rectangle19
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false
                                            }

                                            Rectangle {
                                                id: rectangle20
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false

                                                Label {
                                                    id: label10
                                                    text: qsTr("Температура теплообменника, С")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle21
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false
                                            }

                                            Rectangle {
                                                id: rectangle22
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredWidth: 125
                                                Layout.preferredHeight: 30
                                                Layout.fillWidth: false
                                                Layout.fillHeight: false
                                            }

                                        }
                                    }
                                }

                                Rectangle {
                                    id: rectangle7
                                    width: 200
                                    height: 200
                                    color: "#ffffff"
                                    border.width: 3
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true

                                    ColumnLayout {
                                        id: columnLayout3
                                        anchors.fill: parent
                                        spacing: 0

                                        Label {
                                            id: label4
                                            text: qsTr("Данные по оборудованию")
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            Layout.topMargin: 20
                                            Layout.fillWidth: false
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            font.pointSize: 12
                                            Layout.leftMargin: 25
                                        }

                                        GridLayout {
                                            id: gridLayout2
                                            width: 100
                                            height: 100
                                            rows: 4
                                            columnSpacing: -2
                                            Layout.fillWidth: true
                                            Layout.margins: 15
                                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                                            Layout.fillHeight: false

                                            Rectangle {
                                                id: rectangle26
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Label {
                                                    id: label13
                                                    text: qsTr("Полное наименование")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                                Layout.leftMargin: 0
                                            }

                                            Rectangle {
                                                id: rectangle27
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                layer.enabled: false
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Layout.preferredWidth: -1
                                            }

                                            Rectangle {
                                                id: rectangle29
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Label {
                                                    id: label14
                                                    text: qsTr("Краткое наименование")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle30
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Layout.preferredWidth: -1
                                            }

                                            Rectangle {
                                                id: rectangle32
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Label {
                                                    id: label15
                                                    text: qsTr("Серийный номер")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle33
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Layout.preferredWidth: -1
                                            }

                                            Rectangle {
                                                id: rectangle35
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Label {
                                                    id: label16
                                                    text: qsTr("Температура теплообменника, С")
                                                    anchors.fill: parent
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftInset: 0
                                                    anchors.leftMargin: 15
                                                    font.pointSize: 12
                                                }
                                            }

                                            Rectangle {
                                                id: rectangle36
                                                width: 200
                                                height: 200
                                                color: "#ffffff"
                                                border.width: 2
                                                Layout.preferredHeight: 40
                                                Layout.fillWidth: true
                                                Layout.fillHeight: false
                                                Layout.preferredWidth: -1
                                            }
                                            columns: 2
                                        }
                                    }
                                }
                            }
                        }

                        Rectangle {
                            id: rectangle3
                            width: 200
                            height: 200
                            color: "#ffffff"
                            border.width: 3
                            Layout.leftMargin: 12
                            Layout.margins: 25
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            Button {
                                id: button
                                x: 0
                                y: 0
                                width: 49
                                height: 48
                                text: "Button"
                                highlighted: false
                                flat: true
                                autoRepeat: false
                                autoExclusive: false
                                checkable: false
                                checked: false
                                display: AbstractButton.IconOnly

                                BorderImage {
                                    id: borderImage
                                    anchors.fill: parent
                                    source: "error.png"
                                }
                            }
                        }
                    }
                }

                Rectangle {
                    id: rectangle
                    width: 200
                    height: 200
                    color: "#ffffff"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:19}D{i:38}D{i:42}D{i:46}D{i:48}D{i:23}D{i:51}D{i:52}
D{i:50}D{i:13}D{i:11}
}
##^##*/
