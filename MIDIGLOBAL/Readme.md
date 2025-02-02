# MIDIGLOBAL

It can edit and playback existing scores, play and control sounds, and modulate images and sounds based on sounds sent from midi.

* hydra.js

Receive midi transmission from outside and visualize it on video.

![](/MIDIGLOBAL/ScreenCapture/hydra.png)

* SonicPI.rb

Receives external midi transmissions and modulates the sound for output.

![](/MIDIGLOBAL/ScreenCapture/SonicPI.png)

* Csound.csd

Execute the program to play a sound by itself.

![](/MIDIGLOBAL/ScreenCapture/Csound.png)

* Csound.qml

Control file for Csound.csd.

* LilyPond.ly

This is a fugue-format music file created in LilyPond.

![](/MIDIGLOBAL/ScreenCapture/LilyPond.png)

* LilyPond.midi
* LilyPond.pdf
* LilyPond.xml
* LilyPond.mscz

These file are exported from LilyPond.ly and can be opened in MuseScore.

## Directory Structure
```
MIDIGLOBAL
|-- Input
|   |-- LilyPond.ly
|   |-- LilyPond.midi
|   |-- LilyPond.pdf
|-- Output
|   |-- LilyPond.mscz
|   |-- LilyPond.pdf
|   |-- LilyPond.xml
|-- Readme.md
|-- Receive
|   |-- Csound.csd
|   |-- Csound.qml
|   |-- SonicPI.rb
|   |-- hydra.js
|-- ScreenCapture
    |-- Csound.png
    |-- LilyPond.png
    |-- SonicPI.png
    |-- hydra.png

5 directories, 15 files
```

## How to use
1. It's recommended to be installed
* [LilyPond](https://lilypond.org/download.html)
* [Frescobaldi](https://www.frescobaldi.org/download)
* [Csound](https://csound.com/download.html)
* [Sonic PI](https://sonic-pi.net/)
* [C](https://releases.llvm.org/download.html)
* [Ruby](https://www.ruby-lang.org/downloads/)
2.
* Open Frescobaldi application and run LilyPong.ly after editing the file.
* You can export any file, and play or edit other music applications (ex. MuseScore). 
* Click x button and close the application and files if you want to stop.
3.
* Open Csound.csd on CsoundQt or Other applications.
* Edit the content and run the file.
* In the case that you want to control the file, run Csound.qml in addition.
* Click x button and close the application
and files if you want to stop.
4.
* Open files or applications capable of sending MIDI notes (ex. SuperCollider.sc).
* Open [hydra](https://hydra.ojack.xyz) in your browser.
* Open and run hydra.js on [hydra](https://hydra.ojack.xyz).
* Click x button on your browser tab and SuperCollider if you want to stop.
5.
* Open files or applications capable of
sending MIDI notes (ex. SuperCollider.sc).
* Open and run SonicPI.rb on Sonic PI.
* Click x button on each applications if you want to stop.


Hirotoshi Uchida