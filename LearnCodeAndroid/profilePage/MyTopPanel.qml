import QtQuick 2.15
import QtQuick.Window 2.15

Item{
    id: topPanel
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    height: parent.height * 0.09
    Rectangle{
        anchors.fill: parent
        color: "transparent"
        Text{
            anchors.centerIn: parent
            text: "Профиль"
            color: "grey"
            font.pixelSize: parent.height * 0.5
        }
        Rectangle{
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 5
            width: (parent.width + parent.height) * 0.035
            height: (parent.width + parent.height) * 0.035
            color: "white"
        }
    }
}
