import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 480
    property int durations: 999;


    Image {
        id: image1
        x: 0
        y: 0
        width: 640
        height: 480
        source: "../../../../../Users/Public/Pictures/Sample Pictures/back2.fw.png"
    }

    Image {
        id: fan_01
        x: 8
        y: 7
        width: 150
        height: 150
        source: "../../../../../Users/Public/Pictures/Sample Pictures/fan_01.fw.png"
        PropertyAnimation {
            id: animation_fan_01
            target: fan_01
            property: "rotation"
            from: 0; to: 360; duration: 1000
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
        source: "../../../../../Users/Public/Pictures/Sample Pictures/fan_02.fw.png"
        PropertyAnimation {
            id: animation_fan_02
            target: fan_02
            property: "rotation"
            from: 0; to: 360; duration: 1000
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
        source: "../../../../../Users/Public/Pictures/Sample Pictures/fan_01.fw.png"
        PropertyAnimation {
            id: animation_fan_03
            target: fan_03
            property: "rotation"
            from: 0; to: 360; duration: 1000
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
        source: "../../../../../Users/Public/Pictures/Sample Pictures/fan_02.fw.png"
        PropertyAnimation {
            id: animation_fan_4
            target: fan_04
            property: "rotation"
            from: 0
            to: 360
            loops: Animation.Infinite
            duration: 1000
        }
    }



    Slider {
        id: sVertical1
        x: 503
        y: 377
        width: 22
        height: 87
        orientation: Qt.Vertical
        maximumValue: 1000
        minimumValue: 0
        stepSize: 1.0
        onPressedChanged: animateRun.restart();
        onValueChanged: {
            progressBar1.value = (sVertical1.value/1000);
            text1.text = (sVertical1.value/1000)*100+"%";
        }
    }



    PropertyAnimation {
        id: animateRun
        target: fan_01
        property: "rotation"
        from: 0; to: 360; duration: sVertical1.value == 0 ? 0 : (durations - sVertical1.value);
        loops: Animation.Infinite
    }



    Slider {
        id: sVertical2
        x: 531
        y: 377
        width: 22
        height: 87
        maximumValue: 1000
        stepSize: 1
        orientation: Qt.Vertical
        minimumValue: 0
        onPressedChanged: animateRun2.restart();
        onValueChanged: {
            progressBar2.value = (sVertical2.value/1000);
            text2.text = (sVertical2.value/1000)*100+"%";
        }
    }



    PropertyAnimation {
        id: animateRun2
        target: fan_02
        property: "rotation"
        from: 0; to: 360; duration: sVertical2.value == 0 ? 0 : (durations - sVertical2.value);
        loops: Animation.Infinite
    }



    Slider {
        id: sVertical3
        x: 559
        y: 377
        width: 22
        height: 87
        maximumValue: 1000
        stepSize: 1
        minimumValue: 0
        orientation: Qt.Vertical
        onPressedChanged: animateRun3.restart();
        onValueChanged: {
            progressBar3.value = (sVertical3.value/1000);
            text3.text = (sVertical3.value/1000)*100+"%";
        }
    }



    PropertyAnimation {
        id: animateRun3
        target: fan_03
        property: "rotation"
        from: 0; to: 360; duration: sVertical3.value == 0 ? 0 : (durations - sVertical3.value);
        loops: Animation.Infinite
    }



    Slider {
        id: sVertical4
        x: 587
        y: 377
        width: 22
        height: 87
        maximumValue: 1000
        stepSize: 1
        minimumValue: 0
        orientation: Qt.Vertical
        onPressedChanged: {
            animateRun4.restart();
        }
        onValueChanged: {
            progressBar4.value = (sVertical4.value/1000);
            text4.text = (sVertical4.value/1000)*100+"%";
        }
    }



    PropertyAnimation {
        id: animateRun4
        target: fan_04
        property: "rotation"
        from: 0; to: 360; duration: sVertical4.value == 0 ? 0 : (durations - sVertical4.value);
        loops: Animation.Infinite
    }



    ProgressBar {
        id: progressBar1
        x: 8
        y: 164
        width: 150
        height: 23
    }



    ProgressBar {
        id: progressBar2
        x: 165
        y: 164
        width: 150
        height: 23
    }



    ProgressBar {
        id: progressBar3
        x: 322
        y: 164
        width: 150
        height: 23
    }



    ProgressBar {
        id: progressBar4
        x: 479
        y: 164
        width: 150
        height: 23
    }



    Text {
        id: text1
        x: 13
        y: 169
        width: 140
        height: 14
        text: qsTr("0%")
        font.pixelSize: 12
    }



    Text {
        id: text2
        x: 170
        y: 169
        width: 140
        height: 14
        text: qsTr("0%")
        font.pixelSize: 12
    }



    Text {
        id: text3
        x: 327
        y: 169
        width: 140
        height: 14
        text: qsTr("0%")
        font.pixelSize: 12
    }




    Text {
        id: text4
        x: 484
        y: 169
        width: 140
        height: 14
        text: qsTr("0%")
        font.pixelSize: 12
    }

    //----------------------------------------------------------------//





    Button {
        id: button1
        x: 503
        y: 348
        width: 22
        height: 23
        text: qsTr("O")
        onClicked: animateRun.stop()
    }





    Button {
        id: button2
        x: 531
        y: 348
        width: 22
        height: 23
        text: qsTr("O")
        onClicked: animateRun2.stop()
    }





    Button {
        id: button3
        x: 559
        y: 348
        width: 22
        height: 23
        text: qsTr("O")
        onClicked: animateRun3.stop()
    }





    Button {
        id: button4
        x: 587
        y: 348
        width: 22
        height: 23
        text: qsTr("O")
        onClicked: animateRun4.stop()
    }







}
