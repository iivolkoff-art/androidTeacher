import QtQuick 2.15
import QtQuick.Window 2.15

Item{
    id: mainWindow
    anchors.fill: parent

    property color backgroundColor: "#343838"
    property color colorCPlusPluss: "#008C9E"
    Rectangle{
        anchors.fill: parent
        color: backgroundColor
        MyPagesPanel {
            id: pagesPanel
        }
        MainBottomPanel {
            id: bottomPanel
        }
    }
}
