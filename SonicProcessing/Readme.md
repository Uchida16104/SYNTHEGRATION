# Sonic Processing

It's a visualization and image recording of pitch and volume transitions transmitted by Sonic PI via osc communication.

![](/SonicProcessing/ScreenCapture/Processing.png)
![](/SonicProcessing/ScreenCapture/SonicPI.png)

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
2. Open SonicProcessing.rb on SonicPI.
3. Open the application stored in the folder with each OS (If it doesn't go well, Open SonicProcessing.pde).
4. Run SonicProcessing.rb on SonicPI.
5. If it goes well, you can enjoy it!
6. Click stop button if you stop recording on Sonic PI.
7. Click x button if you stop recording on Processing.
8. Then, it stops all processes.


Hirotoshi Uchida