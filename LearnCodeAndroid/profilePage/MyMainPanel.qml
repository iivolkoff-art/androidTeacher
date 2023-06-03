import QtQuick 2.15
import QtQuick.Window 2.15
Item{
    id: mainPanel
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: topPanel.bottom
    anchors.bottom: parent.bottom

    property int constHeight: 640
    property int constWidth: 480
    property int heightCircle: (height / constHeight) * constHeight * 0.5
    property int widthCircle: (height / constHeight) * constHeight * 0.5

    Rectangle{
        anchors.fill: parent
        color: "transparent"
        Rectangle{
            id: icon
            anchors.right: parent.right
            anchors.rightMargin: 15
            width: heightCircle * 0.6
            height: widthCircle * 0.6
            radius:  (parent.width + parent.height) * 0.3
            color: "grey"
        }
    }
}
