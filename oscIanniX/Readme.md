<h1>oscIanniX</h1>

<p>
  By using pitch transitions sent from 
  <a href="https://www.iannix.org/">IanniX</a> via MIDI communication and modulating them with 
  <a href="https://osci-render.com/">osci-render</a>, new sounds and melodies can be created in real time, and 3D object files can be modulated as synth instruments.
</p>

<details>
  <summary></summary>
  <p>
    <img src="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/ScreenCapture/osc-render.png" alt="osc-render Screen Capture" />
  </p>
  <p>
    <img src="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/ScreenCapture/IanniX.png" alt="IanniX Screen Capture" />
  </p>
</details>

<h2>Directory Structure</h2>

<details>
  <summary></summary>
  <pre>
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
  </pre>
</details>

<h2>How to use</h2>

<details>
  <summary></summary>
  <ol>
    <li>
      It's recommended to install:
      <ul>
        <li><a href="https://www.java.com/download/">Java</a></li>
        <li><a href="https://www.python.org/downloads/">Python</a></li>
        <li><a href="https://www.lua.org/download.html">Lua</a></li>
        <li><a href="https://www.iannix.org/download-iannix/">IanniX</a></li>
        <li><a href="https://github.com/jameshball/osci-render/releases/">osci-render</a></li>
      </ul>
    </li>
    <li>
      Execute the appropriate PythonPackagesOn script:
      <ul>
        <li><a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Install/PythonPackagesOnLinuX.sh">Linux.sh</a></li>
        <li><a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Install/PythonPackagesOnMacOS.sh">MacOS.sh</a></li>
        <li><a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Install/PythonPackegesOnWindows.ps1">Windows.ps1</a></li>
      </ul>
    </li>
    <li>
      Edit 
      <a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/Via/source.py">source.py</a> 
      and 
      <a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/Lua2Obj.py">Lua2Obj.py</a> 
      to customize the formula and parameter parts to the Python description format.
    </li>
    <li>
      Edit 
      <a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/From/Use/oscIanniX.lua">oscIanniX.lua</a> 
      to match the formulas and parameters to the Lua description format.
    </li>
    <li>
      Execute 
      <a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/Lua2Obj.py">Lua2Obj.py</a> 
      on your terminal.
    </li>
    <li>
      Open the generated 
      <a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/To/Use/oscIanniX.obj">oscIanniX.obj</a> 
      or 
      <a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Receive/Convert/From/Use/oscIanniX.lua">oscIanniX.lua</a> 
      with 
      <a href="https://osci-render.com/">osci-render</a>.
    </li>
    <li>
      Open and play 
      <a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX/Send/oscIanniX.iannix">oscIanniX.iannix</a> 
      on 
      <a href="https://www.iannix.org/">IanniX</a>.
    </li>
    <li>
      Click the "Window / Open Software Oscilloscope" buttons or update the status of 
      <a href="https://james.ball.sh/oscilloscope">object file visualization</a>.
    </li>
    <li>
      Click the x button if you stop performance or close each application.
    </li>
  </ol>
</details>

<h2>Reference</h2>

<details>
  <summary>
      Please read Readme.md in each directory for details.
  </summary>
  <table>
    <thead>
      <tr>
        <th>Detail</th>
        <th>GitHub</th>
        <th>GitHub Pages</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>SYNTHEGRATION</td>
        <td><a href="https://github.com/Uchida16104/SYNTHEGRATION/tree/main/Readme.md">LINK</a></td>
        <td><a href="https://uchida16104.github.io/SYNTHEGRATION/">LINK</a></td>
      </tr>
      <tr>
        <td>MIDIGLOBAL</td>
        <td><a href="https://github.com/Uchida16104/SYNTHEGRATION/tree/main/MIDIGLOBAL/Readme.md">LINK</a></td>
        <td><a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL">LINK</a></td>
      </tr>
      <tr>
        <td>PDCollider</td>
        <td><a href="https://github.com/Uchida16104/SYNTHEGRATION/tree/main/PDCollider/Readme.md">LINK</a></td>
        <td><a href="https://uchida16104.github.io/SYNTHEGRATION/PDCollider">LINK</a></td>
      </tr>
      <tr>
        <td>SonicProcessing</td>
        <td><a href="https://github.com/Uchida16104/SYNTHEGRATION/tree/main/SonicProcessing/Readme.md">LINK</a></td>
        <td><a href="https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing">LINK</a></td>
      </tr>
      <tr>
        <td>oscIanniX</td>
        <td><a href="https://github.com/Uchida16104/SYNTHEGRATION/tree/main/oscIanniX/Readme.md">LINK</a></td>
        <td><a href="https://uchida16104.github.io/SYNTHEGRATION/oscIanniX">LINK</a></td>
      </tr>
    </tbody>
  </table>
</details>

<hr />
<p>by Hirotoshi Uchida</p>
