# MIDIGLOBAL

It can edit and playback existing scores, play and control sounds, and modulate images and sounds based on sounds sent from midi.

* [hydra.js](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/hydra.js)

Receive midi transmission from outside and visualize it on video.

![](https://uchida16104.github.io/SYNTHEGRATION//MIDIGLOBAL/ScreenCapture/hydra.png)

* [SonicPI.rb](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/SonicPI.rb)

Receives external midi transmissions and modulates the sound for output.

![](https://uchida16104.github.io/SYNTHEGRATION//MIDIGLOBAL/ScreenCapture/SonicPI.png)

* [Csound.csd](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.csd)

Execute the program to play a sound by itself.

![](https://uchida16104.github.io/SYNTHEGRATION//MIDIGLOBAL/ScreenCapture/Csound.png)

* [Csound.qml](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.qml)

Control file for [Csound.csd](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.csd).

* [LilyPond.ly](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Input/LilyPond.ly)

This is a fugue-format music file created in [LilyPond](https://lilypond.org/).

![](https://uchida16104.github.io/SYNTHEGRATION//MIDIGLOBAL/ScreenCapture/LilyPond.png)

* [LilyPond.midi](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Input/LilyPond.midi)
* [LilyPond.pdf](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Output/LilyPond.pdf)
* [LilyPond.xml](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Output/LilyPond.xml)
* [LilyPond.mscz](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Output/LilyPond.mscz)

These file are exported from [LilyPond.ly](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Input/LilyPond.ly) and can be opened in [MuseScore](https://musescore.org/).

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
* Open Frescobaldi application and run [LilyPong.ly](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Input/LilyPond.ly) after editing the file.
* You can export any file, and play or edit other music applications (ex. [MuseScore](https://musescore.org/)). 
* Click x button and close the application and files if you want to stop.
  
3.
* Open [Csound.csd](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.csd) on CsoundQt or Other applications.
* Edit the content and run the file.
* In the case that you want to control the file, run [Csound.qml](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.qml) in addition.
* Click x button and close the application
and files if you want to stop.

4.
* Open files or applications capable of sending MIDI notes (ex. [SuperCollider.sc](https://uchida16104.github.io/SYNTHEGRATION/PDCollider/Send/SuperCollider.sc)).
* Open [hydra](https://hydra.ojack.xyz) in your browser.
* Open and run [hydra.js](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/hydra.js) on [hydra](https://hydra.ojack.xyz).
* Click x button on your browser tab and [SuperCollider](https://supercollider.github.io/) if you want to stop.
  
5.
* Open files or applications capable of
sending MIDI notes (ex. [SuperCollider.sc](https://uchida16104.github.io/SYNTHEGRATION/PDCollider/Send/SuperCollider.sc)).
* Open and run [SonicPI.rb](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/SonicPI.rb) on [Sonic PI](https://sonic-pi.net/).
* Click x button on each applications if you want to stop.

## Reference
Please read Readme.md in each directory for details.

| Detail | GitHub | GitHub Pages |
| :--- | :--- | :--- |
| SYNTHEGRATION | [LINK](https://github.com/Uchida16104/SYNTHEGRATION/tree/main/Readme.md) | [LINK](https://uchida16104.github.io/SYNTHEGRATION/) |
| MIDIGLOBAL | [LINK](https://github.com/Uchida16104/SYNTHEGRATION/tree/main/MIDIGLOBAL/Readme.md) | [LINK](https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL) |
| PDCollider | [LINK](https://github.com/Uchida16104/SYNTHEGRATION/tree/main/PDCollider/Readme.md) | [LINK](https://uchida16104.github.io/SYNTHEGRATION/PDCollider) |
| SonicProcessing | [LINK](https://github.com/Uchida16104/SYNTHEGRATION/tree/main/SonicProcessing/Readme.md) | [LINK](https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing) |
| oscIanniX | [LINK](https://github.com/Uchida16104/SYNTHEGRATION/tree/main/oscIanniX/Readme.md) | [LINK](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX) |

---

by Hirotoshi Uchida
