import QtQuick 2.0
import QtQuick.Controls 2.0 // NB! Requires Qt 5.7 or later. Rewrite with QtQuick.Controls 1.X if using older Qt versions 

Rectangle {
	color: "#414141"
	width: 724
	height: 610
	anchors.fill: parent


	Flickable {
	anchors.fill: parent
	contentWidth: 724
	contentHeight: 610


            Item {
                id: scaleItem
                anchors.fill: parent
            }

            PinchArea {
                anchors.fill: parent
                pinch.maximumScale: 2.5
                pinch.minimumScale: 0.6
                pinch.target: scaleItem

               MouseArea {  // necessary for co-existense of flickable an pincharea
                   anchors.fill: parent
                   onClicked: console.log("Clicked tiny")
                   propagateComposedEvents: true
               }
           }
        
	Rectangle {
		x: 331 * scaleItem.scale
		y: 59  * scaleItem.scale
		width: 373 * scaleItem.scale
		height: 328 * scaleItem.scale
		color: "#636363"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "Audio Output"
			color: "#f0f0f0"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 604 * scaleItem.scale
		y: 124  * scaleItem.scale
		width: 36 * scaleItem.scale
		height: 28 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			id: dbdisp
			anchors.centerIn: parent
			font.pixelSize: 20 * scaleItem.scale
			text: "-20"
			color: "#eb9d00"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 6 * scaleItem.scale
		y: 282  * scaleItem.scale
		width: 322 * scaleItem.scale
		height: 105 * scaleItem.scale
		color: "#636363"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "MIDI I/O"
			color: "#ffffff"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 6 * scaleItem.scale
		y: 9  * scaleItem.scale
		width: 698 * scaleItem.scale
		height: 48 * scaleItem.scale
		color: "#636363"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 20 * scaleItem.scale
			text: "Audio / MIDI Test"
			color: "#ffffff"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 6 * scaleItem.scale
		y: 59  * scaleItem.scale
		width: 322 * scaleItem.scale
		height: 220 * scaleItem.scale
		color: "#636363"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "Audio Input"
			color: "#f3f3f3"
		font.family: "Arial"
		}
	}


                Rectangle {
                    x: 62 * scaleItem.scale
                    y: 85 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 140 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: 0.856384
                    property string channel: "in2"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#55ff00"
                    }
                }
                

                Rectangle {
                    x: 23 * scaleItem.scale
                    y: 85 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 140 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: 0.861689
                    property string channel: "in1"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#55ff00"
                    }
                }
                

	Rectangle {
		x: 19 * scaleItem.scale
		y: 227  * scaleItem.scale
		width: 23 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "1"
			color: "#ffffff"
		font.family: "DejaVu Sans"
		}
	}

	Button { 
		x: 206 * scaleItem.scale
		y: 327 * scaleItem.scale
		width: 100 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "Generate note"
		property double pressedValue: 1
		property bool isEnventButton: true
		onClicked: csound.readScore('i3 0 0.5') 
	}


                Rectangle {
                    x: 20 * scaleItem.scale
                    y: 311 * scaleItem.scale
                    width: 25 * scaleItem.scale
                    height: 25 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: 0
                    property string channel: "notein"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff4c11"
                    }
                }
                

				  ComboBox {
					  property string channel: "signaltype"
					  x: 549 * scaleItem.scale
					  y: 247 * scaleItem.scale
					  width: 110 * scaleItem.scale
					  height: 28 * scaleItem.scale
					  model: [ "whitenoise","pinknoise","sine","saw" ]
					  currentIndex: 2
					  onCurrentIndexChanged: if (typeof(csound)!='undefined') csound.setControlChannel(channel, currentIndex);
				  }
	

	Rectangle {
		x: 58 * scaleItem.scale
		y: 227  * scaleItem.scale
		width: 23 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "2"
			color: "#ffffff"
		font.family: "DejaVu Sans"
		}
	}


                Rectangle {
                    x: 140 * scaleItem.scale
                    y: 85 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 140 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "in4"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#55ff00"
                    }
                }
                

                Rectangle {
                    x: 101 * scaleItem.scale
                    y: 85 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 140 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "in3"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#55ff00"
                    }
                }
                

	Rectangle {
		x: 97 * scaleItem.scale
		y: 227  * scaleItem.scale
		width: 23 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "3"
			color: "#ffffff"
		font.family: "DejaVu Sans"
		}
	}


	Rectangle {
		x: 136 * scaleItem.scale
		y: 227  * scaleItem.scale
		width: 23 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "4"
			color: "#ffffff"
		font.family: "DejaVu Sans"
		}
	}


                Rectangle {
                    x: 218 * scaleItem.scale
                    y: 85 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 140 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "in6"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#55ff00"
                    }
                }
                

                Rectangle {
                    x: 179 * scaleItem.scale
                    y: 85 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 140 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "in5"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#55ff00"
                    }
                }
                

	Rectangle {
		x: 175 * scaleItem.scale
		y: 227  * scaleItem.scale
		width: 23 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "5"
			color: "#ffffff"
		font.family: "DejaVu Sans"
		}
	}


	Rectangle {
		x: 214 * scaleItem.scale
		y: 227  * scaleItem.scale
		width: 23 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "6"
			color: "#ffffff"
		font.family: "DejaVu Sans"
		}
	}


                Rectangle {
                    x: 295 * scaleItem.scale
                    y: 85 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 140 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "in8"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#55ff00"
                    }
                }
                

                Rectangle {
                    x: 257 * scaleItem.scale
                    y: 85 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 140 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "in7"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#55ff00"
                    }
                }
                

	Rectangle {
		x: 253 * scaleItem.scale
		y: 227  * scaleItem.scale
		width: 23 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "7"
			color: "#ffffff"
		font.family: "DejaVu Sans"
		}
	}


	Rectangle {
		x: 292 * scaleItem.scale
		y: 227  * scaleItem.scale
		width: 23 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "8"
			color: "#ffffff"
		font.family: "DejaVu Sans"
		}
	}

	Button { 
		x: 341 * scaleItem.scale
		y: 170 * scaleItem.scale
		width: 48 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "1"
		checkable: true
		property double pressedValue: 1
		property bool isEnventButton: false

		onPressedChanged: {
            if (pressed) {
				csound.setControlChannel("on1", pressedValue );
			} else {
				csound.setControlChannel("on1", 0 );
			}
		}
				 	}


	Rectangle {
		x: 566 * scaleItem.scale
		y: 174  * scaleItem.scale
		width: 113 * scaleItem.scale
		height: 35 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 16 * scaleItem.scale
			text: "Level (dB)"
			color: "#ffbc35"
		font.family: "Arial"
		}
	}


                Rectangle {
                    x: 357 * scaleItem.scale
                    y: 87 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 80 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "vu1"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff5500"
                    }
                }
                
	Button { 
		x: 391 * scaleItem.scale
		y: 170 * scaleItem.scale
		width: 48 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "2"
		checkable: true
		property double pressedValue: 1
		property bool isEnventButton: false

		onPressedChanged: {
            if (pressed) {
				csound.setControlChannel("on2", pressedValue );
			} else {
				csound.setControlChannel("on2", 0 );
			}
		}
				 	}


                Rectangle {
                    x: 406 * scaleItem.scale
                    y: 87 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 80 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "vu2"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff5500"
                    }
                }
                
	Button { 
		x: 440 * scaleItem.scale
		y: 170 * scaleItem.scale
		width: 48 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "3"
		checkable: true
		property double pressedValue: 1
		property bool isEnventButton: false

		onPressedChanged: {
            if (pressed) {
				csound.setControlChannel("on3", pressedValue );
			} else {
				csound.setControlChannel("on3", 0 );
			}
		}
				 	}


                Rectangle {
                    x: 456 * scaleItem.scale
                    y: 87 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 80 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "vu3"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff5500"
                    }
                }
                
	Button { 
		x: 490 * scaleItem.scale
		y: 170 * scaleItem.scale
		width: 48 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "4"
		checkable: true
		property double pressedValue: 1
		property bool isEnventButton: false

		onPressedChanged: {
            if (pressed) {
				csound.setControlChannel("on4", pressedValue );
			} else {
				csound.setControlChannel("on4", 0 );
			}
		}
				 	}


                Rectangle {
                    x: 506 * scaleItem.scale
                    y: 88 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 80 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "vu4"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff5500"
                    }
                }
                
	Button { 
		x: 343 * scaleItem.scale
		y: 327 * scaleItem.scale
		width: 48 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "5"
		checkable: true
		property double pressedValue: 1
		property bool isEnventButton: false

		onPressedChanged: {
            if (pressed) {
				csound.setControlChannel("on5", pressedValue );
			} else {
				csound.setControlChannel("on5", 0 );
			}
		}
				 	}


                Rectangle {
                    x: 358 * scaleItem.scale
                    y: 243 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 80 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "vu5"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff5500"
                    }
                }
                
	Button { 
		x: 393 * scaleItem.scale
		y: 327 * scaleItem.scale
		width: 48 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "6"
		checkable: true
		property double pressedValue: 1
		property bool isEnventButton: false

		onPressedChanged: {
            if (pressed) {
				csound.setControlChannel("on6", pressedValue );
			} else {
				csound.setControlChannel("on6", 0 );
			}
		}
				 	}


                Rectangle {
                    x: 407 * scaleItem.scale
                    y: 243 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 80 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "vu6"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff5500"
                    }
                }
                
	Button { 
		x: 442 * scaleItem.scale
		y: 327 * scaleItem.scale
		width: 48 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "7"
		checkable: true
		property double pressedValue: 1
		property bool isEnventButton: false

		onPressedChanged: {
            if (pressed) {
				csound.setControlChannel("on7", pressedValue );
			} else {
				csound.setControlChannel("on7", 0 );
			}
		}
				 	}


                Rectangle {
                    x: 457 * scaleItem.scale
                    y: 243 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 80 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "vu7"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff5500"
                    }
                }
                
	Button { 
		x: 492 * scaleItem.scale
		y: 327 * scaleItem.scale
		width: 48 * scaleItem.scale
		height: 48 * scaleItem.scale
		text: "8"
		checkable: true
		property double pressedValue: 1
		property bool isEnventButton: false

		onPressedChanged: {
            if (pressed) {
				csound.setControlChannel("on8", pressedValue );
			} else {
				csound.setControlChannel("on8", 0 );
			}
		}
				 	}


                Rectangle {
                    x: 507 * scaleItem.scale
                    y: 243 * scaleItem.scale
                    width: 16 * scaleItem.scale
                    height: 80 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: -inf
                    property string channel: "vu8"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#ff5500"
                    }
                }
                

	Rectangle {
		x: 16 * scaleItem.scale
		y: 287  * scaleItem.scale
		width: 82 * scaleItem.scale
		height: 26 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "Note received"
			color: "#f0f0f0"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 46 * scaleItem.scale
		y: 311  * scaleItem.scale
		width: 140 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "#272727"

	border.width: 0
		Label {
			id: display
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "..."
			color: "#f3f3f3"
		font.family: "Arial"
		}
	}


                Rectangle {
                    x: 19 * scaleItem.scale
                    y: 355 * scaleItem.scale
                    width: 25 * scaleItem.scale
                    height: 25 * scaleItem.scale
                    color: "black"
                    border.color: "black"
                    border.width: 2
                    property double min: 0
                    property double max: 1
                    property double value: 0
                    property string channel: "ccin"
                    property bool isVertical: height>width

                    MouseArea {
                        anchors.fill: parent

                        function setValue() { // value from min..max
                            var value;
                            if (parent.isVertical) {
                                value = parent.min +  (1 - (mouseY/parent.height)) * (parent.max-parent.min);
                            } else {
                                value = parent.min +  (mouseX/parent.width) * (parent.max-parent.min);
                            }

                            if (value>parent.max) value=parent.max;
                            if (value<parent.min) value=parent.min;
                            if (typeof(csound) !== 'undefined' ) csound.setControlChannel(parent.channel, value);

                            parent.value = value;
                        }

                        onClicked: setValue();
                        onMouseYChanged: setValue();
                    }

                    Rectangle {
                        property double relativeValue: (parent.value-parent.min)/(parent.max-parent.min)
                        width: parent.isVertical ? parent.width - 2*parent.border.width :
                                                  (parent.width-2*parent.border.width) *relativeValue
                        height: parent.isVertical ? (parent.height-2*parent.border.width) *relativeValue :
                                                    parent.height - 2*parent.border.width

                        anchors.margins: parent.border.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        color: "#009ae7"
                    }
                }
                

	Rectangle {
		x: 16 * scaleItem.scale
		y: 332  * scaleItem.scale
		width: 82 * scaleItem.scale
		height: 26 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "CC received"
			color: "#f0f0f0"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 45 * scaleItem.scale
		y: 355  * scaleItem.scale
		width: 140 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "#272727"

	border.width: 0
		Label {
			id: displaycc
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "..."
			color: "#f3f3f3"
		font.family: "Arial"
		}
	}


	Dial {
		x: 572 * scaleItem.scale
		y: 88  * scaleItem.scale
		width: 100 * scaleItem.scale
		height: 100 * scaleItem.scale
		from: 0
		to: 1
		value: 0.29
		onPositionChanged: csound.setControlChannel("leveldelta", from + position*(to-from))
	}

	Rectangle {
		x: 508 * scaleItem.scale
		y: 20  * scaleItem.scale
		width: 60 * scaleItem.scale
		height: 26 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			id: samplerate
			anchors.centerIn: parent
			font.pixelSize: 18 * scaleItem.scale
			text: "48000"
			color: "#f57c00"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 660 * scaleItem.scale
		y: 20  * scaleItem.scale
		width: 30 * scaleItem.scale
		height: 26 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			id: nchnls
			anchors.centerIn: parent
			font.pixelSize: 18 * scaleItem.scale
			text: "8"
			color: "#f57c00"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 428 * scaleItem.scale
		y: 21  * scaleItem.scale
		width: 80 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "Sample Rate"
			color: "#cdcdcd"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 580 * scaleItem.scale
		y: 21  * scaleItem.scale
		width: 80 * scaleItem.scale
		height: 25 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "Channels"
			color: "#cdcdcd"
		font.family: "Arial"
		}
	}


				  ComboBox {
					  property string channel: "spmenu"
					  x: 614 * scaleItem.scale
					  y: 391 * scaleItem.scale
					  width: 90 * scaleItem.scale
					  height: 28 * scaleItem.scale
					  model: [ "None","Input 1","Input 2","Input 3","Input 4","Input 5","Input 6","Input 7","Input 8" ]
					  currentIndex: 1
					  onCurrentIndexChanged: if (typeof(csound)!='undefined') csound.setControlChannel(channel, currentIndex);
				  }
	

	Rectangle {
		x: 547 * scaleItem.scale
		y: 226  * scaleItem.scale
		width: 97 * scaleItem.scale
		height: 24 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "Signal Type"
			color: "#ababab"
		font.family: "Arial"
		}
	}


	Rectangle {
		x: 659 * scaleItem.scale
		y: 226  * scaleItem.scale
		width: 30 * scaleItem.scale
		height: 24 * scaleItem.scale
		color: "transparent"

	border.width: 0
		Label {
			anchors.centerIn: parent
			font.pixelSize: 12 * scaleItem.scale
			text: "Hz"
			color: "#a4a4a4"
		font.family: "Arial"
		}
	}


				  ComboBox {
					  property string channel: "fftsize"
					  x: 614 * scaleItem.scale
					  y: 420 * scaleItem.scale
					  width: 90 * scaleItem.scale
					  height: 28 * scaleItem.scale
					  model: [ "2048","4096","8192" ]
					  currentIndex: 0
					  onCurrentIndexChanged: if (typeof(csound)!='undefined') csound.setControlChannel(channel, currentIndex);
				  }
	
	} // end Flickable
} // end Rectangle
