# SonicProcessing

It's a visualization and image recording of pitch and volume transitions transmitted by [Sonic PI](https://sonic-pi.net/) via osc communication.

![](https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/ScreenCapture/Processing.png)
![](https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/ScreenCapture/SonicPI.png)

## Directory Structure
```
SonicProcessing
|-- Readme.md
|-- Receive
|   |-- SonicProcessing.pde
|   |-- linux-aarch64
|   |-- linux-amd64
|   |-- linux-arm
|   |-- macos-aarch64
|   |-- macos-x86_64
|   |-- sketch.properties
|   |-- windows-amd64
|-- ScreenCapture
|   |-- Processing.png
|   |-- SonicPI.png
|-- Send
    |-- SonicProcessing.rb

10 directories, 6 files
```

## How to use
1. It's recommended to be installed
* [Processing](https://processing.org/download)
* [Java](https://www.java.com/download/)
* [Sonic PI](https://sonic-pi.net/)
* [Ruby](https://www.ruby-lang.org/)

2. Open [SonicProcessing.rb](https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/Send/SonicProcessing.rb) on [Sonic PI](https://sonic-pi.net/).

3. Open [the application stored in the folder with each CPU / OS](https://github.com/Uchida16104/SYNTHEGRATION/releases/tag/SonicProcessing) (If it doesn't go well, Open [SonicProcessing.pde](https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/Receive/SonicProcessing.pde)).

4. Run [SonicProcessing.rb](https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/Send/SonicProcessing.rb) on [Sonic PI](https://sonic-pi.net/).

5. If it goes well, you can enjoy it!

6. Click stop button if you stop recording on [Sonic PI](https://sonic-pi.net/).

7. Click x button if you stop recording on [Processing](https://processing.org/).

8. Then, it stops all processes.


<div style="display: flex; justify-content: space-between; width: 100%;">
<div id="gh-pages-content" style="display: none; line-height: 0.25;" align="left">
  <p>Prev</p>
  <p><a href="https://github.com/Uchida16104/SYNTHEGRATION/tree/main/PDCollider"> << PDCollider </a></p>
  <p><a href="https://uchida16104.github.io/SYNTHEGRATION/PDCollider"> << PDCollider </a></p>
  </div>
<div id="gh-pages-content" style="display: none; line-height: 0.25;" align="right">
  <p>Next</p>
  <p><a href="https://github.com/Uchida16104/SYNTHEGRATION/tree/main/oscIanniX"> oscIanniX >> </a></p>
  <p><a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX"> oscIanniX >> </a></p>
</div>
</div>


Hirotoshi Uchida
