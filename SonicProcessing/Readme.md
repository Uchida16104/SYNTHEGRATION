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
