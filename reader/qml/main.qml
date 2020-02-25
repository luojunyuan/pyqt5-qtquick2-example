import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import QtQuick.Controls.Universal 2.14

ApplicationWindow {
    id: window
    visible: true
    title: qsTr('bulid')
    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

    width: 480
    height: 600

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                icon.source: '../images/baseline-menu-24px.svg'
                onClicked: sideNav.open()
            }
            Drawer {
                id: sideNav
                width: 200
                height: parent.height
                ColumnLayout {
                    width: parent.width
                    Label {
                        text: 'Drawer'
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: 20
                        Layout.fillWidth: true
                    }
                    Button {
                        text: 'List '
                        Layout.fillWidth: true
                        flat: true
                        background.anchors.fill: this
                        spacing: 40
                    }
                }
            }
            Label {
                text: qsTr('change title')
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }

    Column {
        id: body
        anchors.centerIn: parent

        RadioButton { text: qsTr("small") }
        RadioButton { text: qsTr("Medium");  checked: true }
        RadioButton { text: qsTr("Large") }
    }

}