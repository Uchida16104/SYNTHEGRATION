<h1>SonicProcessing</h1>

<p>
  It's a visualization and image recording of pitch and volume transitions transmitted by 
  <a href="https://sonic-pi.net/">Sonic PI</a> via OSC communication.
</p>

<details>
  <summary></summary>
  <p>
    <img src="https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/ScreenCapture/Processing.png" alt="Processing Screen Capture" />
  </p>
  <p>
    <img src="https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/ScreenCapture/SonicPI.png" alt="Sonic PI Screen Capture" />
  </p>
</details>

<h2>Directory Structure</h2>

<details>
  <summary></summary>
  <pre>
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
  </pre>
</details>

<h2>How to use</h2>

<details>
  <summary></summary>
  <ol>
    <li>
      It's recommended to install:
      <ul>
        <li><a href="https://processing.org/download">Processing</a></li>
        <li><a href="https://www.java.com/download/">Java</a></li>
        <li><a href="https://sonic-pi.net/">Sonic PI</a></li>
        <li><a href="https://www.ruby-lang.org/">Ruby</a></li>
      </ul>
    </li>
    <li>
      Open <a href="https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/Send/SonicProcessing.rb">SonicProcessing.rb</a> on 
      <a href="https://sonic-pi.net/">Sonic PI</a>.
    </li>
    <li>
      Open the application stored in the folder corresponding to your CPU/OS from 
      <a href="https://github.com/Uchida16104/SYNTHEGRATION/releases/tag/SonicProcessing">this release</a>.<br />
      (If it doesn't work as expected, open 
      <a href="https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/Receive/SonicProcessing.pde">SonicProcessing.pde</a> instead.)
    </li>
    <li>
      Run <a href="https://uchida16104.github.io/SYNTHEGRATION/SonicProcessing/Send/SonicProcessing.rb">SonicProcessing.rb</a> on 
      <a href="https://sonic-pi.net/">Sonic PI</a>.
    </li>
    <li>
      If it goes well, you can enjoy the performance!
    </li>
    <li>
      Click the stop button on <a href="https://sonic-pi.net/">Sonic PI</a> if you want to stop recording.
    </li>
    <li>
      Click the x button on <a href="https://processing.org/">Processing</a> if you want to stop recording.
    </li>
    <li>
      Then, all processes will stop.
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
