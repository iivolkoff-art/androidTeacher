import QtQuick 2.15
import QtQuick.Window 2.15


Item{

    id: mainBottomPanel
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    height: parent.height * 0.12
    property color buttonColor: "#D9D9D9"
    property int constHeight: 640
    property int constWidth: 480
    property int heightCircle: (height / constHeight) * constHeight * 0.5
    property int widthCircle: (height / constHeight) * constHeight * 0.5

//    property int heightCircle: (parent.width < 300 &&  parent.height < 600) ? (height * 0.3) : ((width + height) * 0.05) // типо if хз
//    property int widthCircle: (parent.width < 300 &&  parent.height < 600) ? (height * 0.3) : ((width + height) * 0.05)


    function addBorder(item){
        item.border.color = "#00B4CC";
        item.border.width = 4;
    }


    Rectangle{
        anchors.fill: parent
        color: backgroundColor
        Rectangle{
            id: firstButton
            //anchors.left: parent.left
            anchors.right: secondButton.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: parent.width * 0.07
            width: widthCircle
            height: heightCircle
            radius:  (parent.width + parent.height) * 0.3
            color: buttonColor

            signal numberChanged(int newNumber)

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    addBorder(firstButton);
                }
            }
        }
        Rectangle{
            id: secondButton
//            anchors.left: firstButton.right
            anchors.right: coolButton.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: parent.width * 0.07
            width: widthCircle
            height: heightCircle
            radius:  (parent.width + parent.height) * 0.3
            color: buttonColor

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    addBorder(secondButton);
                }
            }
        }
        Rectangle{
            id: coolButton
//            anchors.horizontalCenter: parent
//            anchors.verticalCenter: parent
            anchors.centerIn: parent
            //anchors.leftMargin: parent.width * 0.1
            width: widthCircle
            height: heightCircle
            radius:  (parent.width + parent.height) * 0.3
            color: "#008C9E"

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    addBorder(coolButton);

                }
            }
        }
        Rectangle{
            id: thirdButton
            anchors.left: coolButton.right
            //anchors.right: fourthButton.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: parent.width * 0.07
            width: widthCircle
            height: heightCircle
            radius:  (parent.width + parent.height) * 0.3
            color: buttonColor

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    addBorder(thirdButton);

                }
            }
        }
        Rectangle{
            id: fourthButton
            anchors.left: thirdButton.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: parent.width * 0.07
            width: widthCircle
            height: heightCircle
            radius:  (parent.width + parent.height) * 0.3
            color: buttonColor

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    addBorder(fourthButton);

                }
            }
        }

    }
    Rectangle {
        id: line
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
        }
        height: 2
        color: "#686F6F"
    }
}



