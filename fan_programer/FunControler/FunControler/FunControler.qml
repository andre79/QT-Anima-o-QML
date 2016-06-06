import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.2

ApplicationWindow {
    title: qsTr("Fun Controler")
    width: 640
    height: 480
    property int durations: 999;

    Image {
        id: image1
        x: 0
        y: 0
        width: 640
        height: 480
        source: "img/back_metal_final.fw.png"
    }

    Image {
        id: fan_01
        x: 8
        y: 7
        width: 150
        height: 150
        source: "img/fan_01.fw.png"
        PropertyAnimation {
            id: animation_fan_01
            target: fan_01
            property: "rotation"
            from: 360; to: 0; duration: 1000
            loops: Animation.Infinite
        }
        Component.onCompleted: animation_fan_01.stop()
    }

    Image {
        id: fan_02
        x: 166
        y: 7
        width: 150
        height: 150
        source: "img/fan_01.fw.png"
        PropertyAnimation {
            id: animation_fan_02
            target: fan_02
            property: "rotation"
            from: 360; to: 0; duration: 1000
            loops: Animation.Infinite
        }
        Component.onCompleted: animation_fan_02.stop()
    }

    Image {
        id: fan_03
        x: 324
        y: 7
        width: 150
        height: 150
        source: "img/fan_01.fw.png"
        PropertyAnimation {
            id: animation_fan_03
            target: fan_03
            property: "rotation"
            from: 360; to: 0; duration: 1000
            loops: Animation.Infinite
        }
        Component.onCompleted: animation_fan_03.stop()
    }

    Image {
        id: fan_04
        x: 483
        y: 7
        width: 150
        height: 150
        source: "img/fan_01.fw.png"
        PropertyAnimation {
            id: animation_fan_4
            target: fan_04
            property: "rotation"
            from: 360
            to: 0
            loops: Animation.Infinite
            duration: 1000
        }
    }

    Slider {
        id: sVertical1
        x: 442
        y: 337
        width: 140
        height: 24
        clip: false
        activeFocusOnPress: false
        orientation: Qt.Horizontal
        maximumValue: 1000
        minimumValue: 0
        stepSize: 1.0
        onPressedChanged: animateRun.restart();
        onValueChanged: progressBar1.value = ((sVertical1.value/1000)+(sVertical2.value/1000)+(sVertical3.value/1000)+(sVertical4.value/1000))/4;
        style: SliderStyle {
                groove: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 8
                    color: "#4B525B"
                    border.color: "#979CA2"
                    radius: 2
                }
                handle: Rectangle {
                    anchors.centerIn: parent
                    color: control.pressed ? "red" : "black"
                    border.color: "white"
                    border.width: 1
                    implicitWidth: 10
                    implicitHeight: 20
                    radius: 2
                }
         }
    }

    Slider {
        id: sVertical2
        x: 442
        y: 365
        width: 140
        height: 20
        maximumValue: 1000
        stepSize: 1
        orientation: Qt.Horizontal
        minimumValue: 0
        onPressedChanged: animateRun2.restart();
        onValueChanged: progressBar1.value = ((sVertical1.value/1000)+(sVertical2.value/1000)+(sVertical3.value/1000)+(sVertical4.value/1000))/4;
        style: SliderStyle {
                groove: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 8
                    color: "#4B525B"
                    border.color: "#979CA2"
                    radius: 2
                }
                handle: Rectangle {
                    anchors.centerIn: parent
                    color: control.pressed ? "red" : "black"
                    border.color: "white"
                    border.width: 1
                    implicitWidth: 10
                    implicitHeight: 20
                    radius: 2
                }
         }
    }



    Slider {
        id: sVertical3
        x: 442
        y: 391
        width: 140
        height: 20
        maximumValue: 1000
        stepSize: 1
        minimumValue: 0
        orientation: Qt.Horizontal
        onPressedChanged: animateRun3.restart();
        onValueChanged: progressBar1.value = ((sVertical1.value/1000)+(sVertical2.value/1000)+(sVertical3.value/1000)+(sVertical4.value/1000))/4;
        style: SliderStyle {
                groove: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 8
                    color: "#4B525B"
                    border.color: "#979CA2"
                    radius: 2
                }
                handle: Rectangle {
                    anchors.centerIn: parent
                    color: control.pressed ? "red" : "black"
                    border.color: "white"
                    border.width: 1
                    implicitWidth: 10
                    implicitHeight: 20
                    radius: 2
                }
         }

    }

    Slider {
        id: sVertical4
        x: 442
        y: 418
        width: 140
        height: 20
        maximumValue: 1000
        stepSize: 1
        minimumValue: 0
        orientation: Qt.Horizontal

        onPressedChanged: {
            animateRun4.restart();
        }
        onValueChanged: progressBar1.value = ((sVertical1.value/1000)+(sVertical2.value/1000)+(sVertical3.value/1000)+(sVertical4.value/1000))/4;
        style: SliderStyle {
                groove: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 8
                    color: "#4B525B"
                    border.color: "#979CA2"
                    radius: 2
                }
                handle: Rectangle {
                    anchors.centerIn: parent
                    color: control.pressed ? "red" : "black"
                    border.color: "white"
                    border.width: 1
                    implicitWidth: 10
                    implicitHeight: 20
                    radius: 2
                }
         }
    }

    PropertyAnimation {
        id: animateRun
        target: fan_01
        property: "rotation"
        from: 360; to: 0; duration: sVertical1.value == 1 ? 0 : (durations - sVertical1.value);
        loops: Animation.Infinite
    }

    PropertyAnimation {
        id: animateRun2
        target: fan_02
        property: "rotation"
        from: 360; to: 0; duration: sVertical2.value == 1 ? 0 : (durations - sVertical2.value);
        loops: Animation.Infinite
    }

    PropertyAnimation {
        id: animateRun3
        target: fan_03
        property: "rotation"
        from: 360; to: 0; duration: sVertical3.value == 1 ? 0 : (durations - sVertical3.value);
        loops: Animation.Infinite
    }    

    PropertyAnimation {
        id: animateRun4
        target: fan_04
        property: "rotation"
        from: 360; to: 0; duration: sVertical4.value == 1 ? 0 : (durations - sVertical4.value);
        loops: Animation.Infinite
    }

    Button {
        id: button1
        x: 590
        y: 337
        width: 22
        height: 23
        text: "1"
        onClicked: animateRun.stop()

        style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "#888"
                    radius: 1
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "#0E2A14" : "#E82A14" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#0E2A14" }
                    }
                }
            }

    }

    Button {
        id: button2
        x: 590
        y: 365
        width: 22
        height: 23
        text: "2"
        onClicked: animateRun2.stop()

        style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "#888"
                    radius: 1
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "#0E2A14" : "#E82A14" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#0E2A14" }
                    }
                }
            }

    }

    Button {
        id: button3
        x: 590
        y: 391
        width: 22
        height: 23
        text: "3"
        onClicked: animateRun3.stop()

        style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "#888"
                    radius: 1
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "#0E2A14" : "#E82A14" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#0E2A14" }
                    }
                }
            }
    }

    Button {
        id: button4
        x: 590
        y: 418
        width: 22
        height: 23
        text: qsTr("4")
        onClicked: animateRun4.stop()

        style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "#888"
                    radius: 1
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? "#0E2A14" : "#E82A14" }
                        GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#0E2A14" }
                    }
                }
            }

    }

    ProgressBar {
        id: progressBar1
        x: 442
        y: 443
        width: 169
        height: 9
        opacity: 0.4
        indeterminate: false
        clip: false

        style: ProgressBarStyle {
                background: Rectangle {
                    radius: 2
                    color: "lightgray"
                    border.color: "darkgray"
                    border.width: 1
                    implicitWidth: 200
                    implicitHeight: 24
                }
                progress: Rectangle {
                    color: "red"
                    //border.color: "black"
                }
            }

    }
}
