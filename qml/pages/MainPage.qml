import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {
     objectName: "mainPage"

     SilicaListView {
        anchors.fill: parent

        header: Column {
            width: parent.width
            height: header.height + mainColumn.height + Theme.paddingLarge

            PageHeader {
                id: header
                title: "Радио"
                extraContent.children: [
                    Row {
                        IconButton {
                            objectName: "aboutButton"
                            icon.source: "image://theme/icon-m-about"
                            anchors.verticalCenter: parent.verticalCenter
                            onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
                        }

                        IconButton {
                            objectName: "stopButton"
                            icon.source: "image://theme/icon-l-stop"
                            anchors.verticalCenter: parent.verticalCenter
                            onClicked: onStopClicked()
                        }
                    }
                ]
            }

            Column {
                id: mainColumn
                width: parent.width
                spacing: Theme.paddingLarge

                Label {
                    id: heading
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: Theme.fontSizeExtraLarge
                }

                Label {
                    id: metaDataTitle
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Button {
                    id: deepHouse
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "1.FM - Deep House"
                    onClicked: playDeepHouse()
                }

                Button {
                    id: pureDance
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "NonStopPlay Pure Dance"
                    onClicked: playNonStopPlayPureDance()
                }

                Button {
                    id: danceRadio
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "NonStopPlay Dance Radio"
                    onClicked: playNonStopPlayDanceRadio()
                }

                Button {
                    id: decibelEuroDance
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Decibel EURODANCE"
                    onClicked: playDecibelEuroDance()
                }

                Button {
                    id: techno
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Best Of Techno"
                    onClicked: playTechno()
                }

                Button {
                    id: energy
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Energy FM - Dance Music Radio"
                    onClicked: playEnergy()
                }
            }

            function onStopClicked(){
                player.stop()
                heading.text = "Stopped"
                metaDataTitle.text = ""
            }
            function playDeepHouse(){
                heading.text = deepHouse.text
                metaDataTitle.text = ""
                player.stop()
                player.source = "http://strm112.1.fm/deephouse_mobile_mp3"
                player.play()
            }
            function playNonStopPlayPureDance(){
                heading.text = pureDance.text
                metaDataTitle.text = ""
                player.stop()
                player.source = "http://stream.nonstopplay.co.uk/nsppd-32k-aac"
                player.play()
            }
            function playNonStopPlayDanceRadio(){
                heading.text = danceRadio.text
                metaDataTitle.text = ""
                player.stop()
                player.source = "http://stream.nonstopplay.co.uk/nsp-192k-mp3"
                player.play()
            }
            function playDecibelEuroDance(){
                heading.text = decibelEuroDance.text
                metaDataTitle.text = ""
                player.stop()
                player.source = "https://25433.live.streamtheworld.com/DECIBELEURODANCE.mp3"
                player.play()
            }
            function playTechno(){
                heading.text = techno.text
                metaDataTitle.text = ""
                player.stop()
                player.source = "http://stream.laut.fm/best-of-techno"
                player.play()
            }
            function playEnergy(){
                heading.text = energy.text
                metaDataTitle.text = ""
                player.stop()
                player.source = "https://radio.streemlion.com:1875/stream"
                player.play()
            }
        }

        VerticalScrollDecorator {}

        MediaPlayer {
               id: player
               metaData.onMetaDataChanged: metaDataTitle.text = player.metaData.title
           }
        }
     }
