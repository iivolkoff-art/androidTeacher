import QtQuick 2.15
import QtQuick.Window 2.15
Item{
    id: profilePage
    anchors.fill: parent
    Rectangle{
        anchors.fill: parent
        color: backgroundColor
        MyTopPanel {
            id: topPanel
        }
        MyMainPanel {
            id: mainPanel
        }
    }
}
