import QtQuick 2.15
import QtQuick.Window 2.15
import "./mainWondow"
import "./profilePage"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("VolkoffCode")
//    MyMainWindow {
//        id: mainWindow
//    }
    property color backgroundColor: "#343838"
    MyProfilePage {
        id: profilePage
    }
}
