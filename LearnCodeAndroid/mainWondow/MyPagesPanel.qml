import QtQuick 2.15
import QtQuick.Window 2.15


Item {
    id: pagesPanel
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: bottomPanel.top

    property int number: 2

    MainTopPanel {
        id: topPanel
    }

    Rectangle{
        anchors.top: topPanel.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: backgroundColor
        Text{
            anchors.fill: parent
            text: number
            color: "white"
        }

    }
}
