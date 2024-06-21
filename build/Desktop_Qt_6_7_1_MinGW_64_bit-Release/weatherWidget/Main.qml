import QtQuick

Window {
    width: 350
    height: 600
    title: "Weather"
    visible: true

    Rectangle {
        id: border
        width: 350
        height: 600
        radius: 10
        clip: true

        property int gradientIndex: 0

        function cycleGradient() {
            frostyAnimation.running = false
            sunnyAnimation.running = false
            nightAnimation.running = false

            gradientIndex = (gradientIndex + 1) % 3
            switch (gradientIndex) {
                case 1:
                    frostyAnimation.start()
                    break
                case 2:
                    sunnyAnimation.start()
                    break
                case 0:
                    nightAnimation.start()
                    break
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                border.cycleGradient();
            }
        }

        ParallelAnimation {
            id: frostyAnimation
            running: false

            ColorAnimation {
                target: startStop
                property: "color"
                to: "#29386f"
                duration: 100
            }

            ColorAnimation {
                target: endStop
                property: "color"
                to: "#b8f5ff"
                duration: 100
            }

            ColorAnimation {
                target: groundStartStop1
                property: "color"
                to: "#f3ffff"
                duration: 100
            }

            ColorAnimation {
                target: groundEndStop1
                property: "color"
                to: "#9af2ff"
                duration: 100
            }

            ColorAnimation {
                target: groundStartStop2
                property: "color"
                to: "#f3ffff"
                duration: 100
            }

            ColorAnimation {
                target: groundEndStop2
                property: "color"
                to: "#9af2ff"
                duration: 100
            }

            ColorAnimation {
                target: degrees
                property: "color"
                to: "#a8ddff"
                duration: 100
            }

            ColorAnimation {
                target: place
                property: "color"
                to: "#4497bf"
                duration: 100
            }

            ColorAnimation {
                target: circle
                property: "color"
                to: "#feffdf"
                duration: 100
            }

            ColorAnimation {
                target: circle1
                property: "color"
                to: "#feffdf"
                duration: 100
            }

            ColorAnimation {
                target: circle2
                property: "color"
                to: "#feffdf"
                duration: 100
            }

            ColorAnimation {
                target: circle3
                property: "color"
                to: "#feffdf"
                duration: 100
            }

            ColorAnimation {
                target: currentDate
                property: "color"
                to: "#a8ddff"
                duration: 100
            }

            ColorAnimation {
                target: currentTime
                property: "color"
                to: "#a8ddff"
                duration: 100
            }

            PropertyAnimation {
                target: degrees
                property: "text"
                to: "-13°C"
                duration: 0
            }

            PropertyAnimation {
                target: place
                property: "text"
                to: "Moscow"
                duration: 0
            }

            PropertyAnimation {
                target: weather
                property: "text"
                to: "Frosty"
                duration: 0
            }

            PropertyAnimation {
                target: circle_container
                property: "x"
                to: 150
                duration: 100
            }

            PropertyAnimation {
                target: circle_container
                property: "y"
                to: 375
                duration: 100
            }

            PropertyAnimation {
                target: overlay
                property: "opacity"
                to: 0
                duration: 100
            }
        }

        ParallelAnimation {
            id: sunnyAnimation
            running: false

            ColorAnimation {
                target: startStop
                property: "color"
                to: "#ffbd3f"
                duration: 100
            }

            ColorAnimation {
                target: endStop
                property: "color"
                to: "#fff097"
                duration: 100
            }

            ColorAnimation {
                target: groundStartStop1
                property: "color"
                to: "#e0d7a4"
                duration: 100
            }

            ColorAnimation {
                target: groundEndStop1
                property: "color"
                to: "#e7c77a"
                duration: 100
            }

            ColorAnimation {
                target: groundStartStop2
                property: "color"
                to: "#e0d7a4"
                duration: 100
            }

            ColorAnimation {
                target: groundEndStop2
                property: "color"
                to: "#e7c77a"
                duration: 100
            }

            ColorAnimation {
                target: degrees
                property: "color"
                to: "#fff5b8"
                duration: 100
            }

            ColorAnimation {
                target: place
                property: "color"
                to: "#f7a526"
                duration: 100
            }

            ColorAnimation {
                target: circle
                property: "color"
                to: "#ffdb50"
                duration: 100
            }

            ColorAnimation {
                target: circle1
                property: "color"
                to: "#ffdb50"
                duration: 100
            }

            ColorAnimation {
                target: circle2
                property: "color"
                to: "#ffdb50"
                duration: 100
            }

            ColorAnimation {
                target: circle3
                property: "color"
                to: "#ffdb50"
                duration: 100
            }

            ColorAnimation {
                target: currentDate
                property: "color"
                to: "#fff5b8"
                duration: 100
            }

            ColorAnimation {
                target: currentTime
                property: "color"
                to: "#fff5b8"
                duration: 100
            }

            PropertyAnimation {
                target: degrees
                property: "text"
                to: "32°C"
                duration: 0
            }

            PropertyAnimation {
                target: place
                property: "text"
                to: "Ankara"
                duration: 0
            }

            PropertyAnimation {
                target: weather
                property: "text"
                to: "Hot"
                duration: 0
            }

            PropertyAnimation {
                target: circle_container
                property: "x"
                to: 200
                duration: 100
            }

            PropertyAnimation {
                target: circle_container
                property: "y"
                to: 110
                duration: 100
            }
        }

        ParallelAnimation {
            id: nightAnimation
            running: false

            ColorAnimation {
                target: startStop
                property: "color"
                to: "#0F2129"
                duration: 100
            }

            ColorAnimation {
                target: endStop
                property: "color"
                to: "#47334A"
                duration: 100
            }

            ColorAnimation {
                target: groundStartStop1
                property: "color"
                to: "#2f2b3c"
                duration: 100
            }

            ColorAnimation {
                target: groundEndStop1
                property: "color"
                to: "#091B21"
                duration: 100
            }

            ColorAnimation {
                target: groundStartStop2
                property: "color"
                to: "#2f2b3c"
                duration: 100
            }

            ColorAnimation {
                target: groundEndStop2
                property: "color"
                to: "#091B21"
                duration: 100
            }

            ColorAnimation {
                target: degrees
                property: "color"
                to: "#4f787d"
                duration: 100
            }

            ColorAnimation {
                target: place
                property: "color"
                to: "#694c6d"
                duration: 100
            }

            ColorAnimation {
                target: circle
                property: "color"
                to: "#bcae76"
                duration: 100
            }

            ColorAnimation {
                target: circle1
                property: "color"
                to: "#bcae76"
                duration: 100
            }

            ColorAnimation {
                target: circle2
                property: "color"
                to: "#bcae76"
                duration: 100
            }

            ColorAnimation {
                target: circle3
                property: "color"
                to: "#bcae76"
                duration: 100
            }

            ColorAnimation {
                target: currentDate
                property: "color"
                to: "#4f787d"
                duration: 100
            }

            ColorAnimation {
                target: currentTime
                property: "color"
                to: "#4f787d"
                duration: 100
            }

            PropertyAnimation {
                target: degrees
                property: "text"
                to: "24°C"
                duration: 0
            }

            PropertyAnimation {
                target: place
                property: "text"
                to: "Madrid"
                duration: 0
            }

            PropertyAnimation {
                target: weather
                property: "text"
                to: "Clear"
                duration: 0
            }

            PropertyAnimation {
                target: circle_container
                property: "x"
                to: 5
                duration: 100
            }

            PropertyAnimation {
                target: circle_container
                property: "y"
                to: 300
                duration: 100
            }

            PropertyAnimation {
                target: overlay
                property: "opacity"
                to: 1
                duration: 100
            }
        }

        Rectangle {
            id: backGround
            anchors.fill: parent
            gradient: Gradient {
                id: gradient
                GradientStop { id: startStop; position: 0.0; color: "#0F2129" }
                GradientStop { id: endStop; position: 1.0; color: "#47334A" }
            }
        }

        /*Rectangle {
            id: night_bg
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#0F2129" }
                GradientStop { position: 1.0; color: "#47334A" }
            }
        }

        Rectangle {
            id: frosty_bg
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#29386f" }
                GradientStop { position: 1.0; color: "#b8f5ff" }
            }
            opacity: 0
            SequentialAnimation on opacity {
                loops: Animation.Infinite
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 1 }
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 0 }
                PauseAnimation { duration: 10100 }
            }
        }

        Rectangle {
            id: sunny_bg
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#ffbd3f" }
                GradientStop { position: 1.0; color: "#fff097" }
            }
            opacity: 0
            SequentialAnimation on opacity {
                loops: Animation.Infinite
                PauseAnimation { duration: 20100 }
                PropertyAnimation { duration: 100; to: 1 }
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 0 }
            }
        }*/

        Column {
            id: text_container
            anchors {
                top: parent.top
                horizontalCenter: parent.horizontalCenter
                topMargin: 5
            }
            z: 1
            spacing: 10

            Text {
                id: degrees
                font.pixelSize: 100
                font.bold: true
                color: "#4F787D"
                anchors.horizontalCenter: parent.horizontalCenter
                text: "24°C"
                /*SequentialAnimation on color {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#a8ddff" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#fff5b8" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#4f787d" }
                }

                SequentialAnimation on text {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    PropertyAnimation { duration: 0; to: "-13°C" }
                    PauseAnimation { duration: 10100 }
                    PropertyAnimation { duration: 0; to: "32°C" }
                    PauseAnimation { duration: 10100 }
                    PropertyAnimation { duration: 0; to: "24°C" }
                    PauseAnimation { duration: 100 }
                }*/
            }

            Text {
                id: place
                font.pixelSize: 20
                color: "#694c6d"
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Madrid"
                /*SequentialAnimation on color {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#4497bf" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#f7a526" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#694c6d" }
                }

                SequentialAnimation on text {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    PropertyAnimation { duration: 0; to: "Moscow" }
                    PauseAnimation { duration: 10100 }
                    PropertyAnimation { duration: 0; to: "Ankara" }
                    PauseAnimation { duration: 10100 }
                    PropertyAnimation { duration: 0; to: "Madrid" }
                    PauseAnimation { duration: 100 }
                }*/
            }

            Text {
                id: weather
                font.pixelSize: 16
                color: "#FFF"
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Clear"

                /*SequentialAnimation on text {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    PropertyAnimation { duration: 0; to: "Frosty" }
                    PauseAnimation { duration: 10100 }
                    PropertyAnimation { duration: 0; to: "Hot" }
                    PauseAnimation { duration: 10100 }
                    PropertyAnimation { duration: 0; to: "Clear" }
                    PauseAnimation { duration: 100 }
                }*/
            }
        }

        Rectangle {
            id: circle_container
            width: 140
            height: 140
            z: 2
            x: 5
            y: 300
            color: "transparent"
            /*SequentialAnimation on x {
                loops: Animation.Infinite
                PauseAnimation { duration: 10000 }
                NumberAnimation { duration: 100; to: 150 }
                PauseAnimation { duration: 10000 }
                NumberAnimation { duration: 100; to: 200 }
                PauseAnimation { duration: 10000 }
                NumberAnimation { duration: 100; to: 5 }
            }

            SequentialAnimation on y {
                loops: Animation.Infinite
                PauseAnimation { duration: 10000 }
                NumberAnimation { duration: 100; to: 375 }
                PauseAnimation { duration: 10000 }
                NumberAnimation { duration: 100; to: 110 }
                PauseAnimation { duration: 10000 }
                NumberAnimation { duration: 100; to: 300 }
            }*/

            Rectangle {
                id: circle
                width: 60
                height: 60
                radius: 30
                clip: true
                color: "#BCAE76"
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                /*SequentialAnimation on color {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#feffdf" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#ffdb50" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#bcae76" }
                }*/
            }

            Rectangle {
                id: overlay
                width: 60
                height: 60
                radius: 30
                opacity: 1
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#2E2B3C" }
                    GradientStop { position: 1.0; color: "#352D3D" }
                }
                anchors {
                    right: circle.right
                    verticalCenter: circle.verticalCenter
                    margins: -15
                }
            }

            Rectangle {
                id: circle1
                width: 100
                height: 100
                radius: 50
                color: "#BCAE76"
                opacity: 0.5
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                /*SequentialAnimation on color {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#feffdf" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#ffdb50" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#bcae76" }
                }*/
            }

            Rectangle {
                id: circle2
                width: 120
                height: 120
                radius: 60
                color: "#BCAE76"
                opacity: 0.3
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                /*SequentialAnimation on color {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#feffdf" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#ffdb50" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#bcae76" }
                }*/
            }

            Rectangle {
                id: circle3
                width: 130
                height: 130
                radius: 65
                color: "#BCAE76"
                opacity: 0.1
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                /*SequentialAnimation on color {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#feffdf" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#ffdb50" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#bcae76" }
                }*/
            }
        }

        Rectangle {
            id: ground1
            width: 270
            height: 150
            radius: 100
            rotation: 20
            anchors {
                bottom: parent.bottom
                left: parent.left
                margins: -50
            }
            z: 2
            gradient: Gradient {
                GradientStop { id: groundStartStop1; position: 0.0; color: "#2f2b3c" }
                GradientStop { id: groundEndStop1; position: 1.0; color: "#091B21" }
            }
        }

        /*Rectangle {
            id: ground1_night
            width: 270
            height: 150
            radius: 100
            rotation: 20
            anchors {
                bottom: parent.bottom
                left: parent.left
                margins: -50
            }
            z: 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#2f2b3c" }
                GradientStop { position: 1.0; color: "#091B21" }
            }
        }

        Rectangle {
            id: ground1_frosty
            width: 270
            height: 150
            radius: 100
            rotation: 20
            anchors {
                bottom: parent.bottom
                left: parent.left
                margins: -50
            }
            z: 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#f3ffff" }
                GradientStop { position: 1.0; color: "#9af2ff" }
            }
            opacity: 0
            SequentialAnimation on opacity {
                loops: Animation.Infinite
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 1 }
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 0 }
                PauseAnimation { duration: 10100 }
            }
        }

        Rectangle {
            id: ground1_sunny
            width: 270
            height: 150
            radius: 100
            rotation: 20
            anchors {
                bottom: parent.bottom
                left: parent.left
                margins: -50
            }
            z: 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#e0d7a4" }
                GradientStop { position: 1.0; color: "#e7c77a" }
            }
            opacity: 0
            SequentialAnimation on opacity {
                loops: Animation.Infinite
                PauseAnimation { duration: 20100 }
                PropertyAnimation { duration: 100; to: 1 }
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 0 }
            }
        }*/

        Rectangle {
            id: ground2
            width: 500
            height: 150
            radius: 100
            rotation: -10
            anchors {
                bottom: parent.bottom
                right: parent.right
                margins: -70
            }
            z: 2
            gradient: Gradient {
                GradientStop { id: groundStartStop2; position: 0.0; color: "#2f2b3c" }
                GradientStop { id: groundEndStop2; position: 1.0; color: "#091B21" }
            }
        }

        /*Rectangle {
            id: ground2_night
            width: 500
            height: 150
            radius: 100
            rotation: -10
            anchors {
                bottom: parent.bottom
                right: parent.right
                margins: -70
            }
            z: 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#2f2b3c" }
                GradientStop { position: 1.0; color: "#091B21" }
            }
        }

        Rectangle {
            id: ground2_frosty
            width: 500
            height: 150
            radius: 100
            rotation: -10
            anchors {
                bottom: parent.bottom
                right: parent.right
                margins: -70
            }
            z: 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#f3ffff" }
                GradientStop { position: 1.0; color: "#9af2ff" }
            }
            opacity: 0
            SequentialAnimation on opacity {
                loops: Animation.Infinite
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 1 }
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 0 }
                PauseAnimation { duration: 10100 }
            }
        }

        Rectangle {
            id: ground2_sunny
            width: 500
            height: 150
            radius: 100
            rotation: -10
            anchors {
                bottom: parent.bottom
                right: parent.right
                margins: -70
            }
            z: 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#e0d7a4" }
                GradientStop { position: 1.0; color: "#e7c77a" }
            }
            opacity: 0
            SequentialAnimation on opacity {
                loops: Animation.Infinite
                PauseAnimation { duration: 20100 }
                PropertyAnimation { duration: 100; to: 1 }
                PauseAnimation { duration: 10000 }
                PropertyAnimation { duration: 100; to: 0 }
            }
        }*/

        Timer {
            interval: 1000
            repeat: true
            running: true
            onTriggered: {
                var currentDateTime = new Date();
                currentTime.text = "Current Local Time: "+currentDateTime.toTimeString()
                currentDate.text = currentDateTime.toDateString()
            }
        }

        Column {
            id: dayTime_container
            anchors {
                bottom: parent.bottom
                right: parent.right
                rightMargin: 10
            }
            z: 2
            spacing: 10

            Text {
                id: currentTime
                font.pixelSize: 15
                color: "#4F787D"
                text: "Current Local Time: "+new Date().toTimeString()
                /*SequentialAnimation on color {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#a8ddff" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#fff5b8" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#4f787d" }
                }*/
            }

            Text {
                id: currentDate
                font.pixelSize: 15
                color: "#4F787D"
                anchors.right: parent.right
                text: new Date().toDateString()
                /*SequentialAnimation on color {
                    loops: Animation.Infinite
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#a8ddff" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#fff5b8" }
                    PauseAnimation { duration: 10000 }
                    ColorAnimation { duration: 100; to: "#4f787d" }
                }*/
            }
        }
    }
}
