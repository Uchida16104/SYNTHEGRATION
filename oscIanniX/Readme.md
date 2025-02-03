# oscIanniX

By using pitch transitions sent from [IanniX](https://www.iannix.org/) via MIDI communication and modulating them with [osci-render](https://osci-render.com/), new sounds and melodies can be created in real time, and 3D object files can be modulated as synth instruments.
![](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/ScreenCapture/osc-render.png)
![](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/ScreenCapture/IanniX.png)

## Directory Structure
```
oscIanniX
|-- Readme.md
|-- Receive
|   |-- Convert
|   |   |-- From
|   |   |   |-- Use
|   |   |       |-- oscIanniX.lua
|   |   |-- Lua2Obj.py
|   |   |-- To
|   |   |   |-- Use
|   |   |   |   |-- oscIanniX.obj
|   |   |   |-- oscIanniX.py
|   |   |-- Via
|   |       |-- source.py
|   |-- Install
|       |-- PythonPackagesOnLinuX.sh
|       |-- PythonPackagesOnMacOS.sh
|       |-- PythonPackegesOnWindows.ps1
|       |-- venv
|           |-- Scripts
|               |-- Activate.ps1
|-- ScreenCapture
|   |-- IanniX.png
|   |-- osc-render.png
|-- Send
    |-- oscIanniX.iannix

13 directories, 13 files
```

# How to use
1. It's recommended to be installed
* [Java](https://www.java.com/download/)
* [Python](https://www.python.org/downloads/)
* [Lua](https://www.lua.org/download.html)
* [IanniX](https://www.iannix.org/download-iannix/)
* [osci-render](https://github.com/jameshball/osci-render/releases/)

2. Execute PythonPackagesOn([Linux.sh](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Install/PythonPackagesOnLinuX.sh) / [MacOS.sh](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Install/PythonPackagesOnMacOS.sh) / [Windows.ps1](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Install/PythonPackegesOnWindows.ps1)).

3. Edit [source.py](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/Via/source.py) and [Lua2Obj.py](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/Lua2Obj.py) to customize the formula and
parameter parts to the python description format.

4. Edit [oscIanniX.lua](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/From/Use/oscIanniX.lua) to match the formulas and parameters in the file to
the Lua description format.

5. Execute [Lua2Obj.py](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/Lua2Obj.py) on your terminal.

6. Open the generated [oscIanniX.obj](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/To/Use/oscIanniX.obj) or [oscIanniX.lua](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/From/Use/oscIanniX.lua) with [osci-render](https://osci-render.com/).

7. Open and play [oscIanniX.ianniX](https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Send/oscIanniX.ianniX) on [IanniX](https://www.iannix.org/).

8. Click "Window / Open Software Oscilloscope" buttons or update status of [object file visualization](https://james.ball.sh/oscilloscope).

9. Click x button if you stop performance or close each applications.


Hirotoshi Uchida
