<h1>MIDIGLOBAL</h1>

<p>
  It can edit and playback existing scores, play and control sounds, and modulate images and sounds based on sounds sent from midi.
</p>

<details>
  <summary>
    <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/hydra.js">hydra.js</a> – Receive MIDI transmission from outside and visualize it on video.
  </summary>
  <p>
    <img src="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/ScreenCapture/hydra.png" alt="hydra.js Screen Capture" />
  </p>
</details>

<details>
  <summary>
    <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/SonicPI.rb">SonicPI.rb</a> – Receives external MIDI transmissions and modulates the sound for output.
  </summary>
  <p>
    <img src="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/ScreenCapture/SonicPI.png" alt="SonicPI Screen Capture" />
  </p>
</details>

<details>
  <summary>
    <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.csd">Csound.csd</a> – Execute the program to play a sound by itself.
  </summary>
  <p>
    <img src="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/ScreenCapture/Csound.png" alt="Csound Screen Capture" />
  </p>
</details>

<p>
  <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.qml">Csound.qml</a> – Control file for 
  <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.csd">Csound.csd</a>.
</p>

<details>
  <summary>
    <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Input/LilyPond.ly">LilyPond.ly</a> – This is a fugue-format music file created in 
    <a href="https://lilypond.org/">LilyPond</a>.
  </summary>
  <p>
    <img src="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/ScreenCapture/LilyPond.png" alt="LilyPond Screen Capture" />
  </p>
</details>

<ul>
  <li><a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Input/LilyPond.midi">LilyPond.midi</a></li>
  <li><a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Output/LilyPond.pdf">LilyPond.pdf</a></li>
  <li><a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Output/LilyPond.xml">LilyPond.xml</a></li>
  <li><a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Output/LilyPond.mscz">LilyPond.mscz</a></li>
</ul>

<p>
  These files are exported from <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Input/LilyPond.ly">LilyPond.ly</a> and can be opened in 
  <a href="https://musescore.org/">MuseScore</a>.
</p>

<h2>Directory Structure</h2>

<details>
  <summary></summary>
  <pre>
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
  </pre>
</details>

<h2>How to use</h2>

<details>
  <summary>1.</summary>
  <p>It's recommended to install the following:</p>
  <ul>
    <li><a href="https://lilypond.org/download.html">LilyPond</a></li>
    <li><a href="https://www.frescobaldi.org/download">Frescobaldi</a></li>
    <li><a href="https://csound.com/download.html">Csound</a></li>
    <li><a href="https://sonic-pi.net/">Sonic PI</a></li>
    <li><a href="https://releases.llvm.org/download.html">C</a></li>
    <li><a href="https://www.ruby-lang.org/downloads/">Ruby</a></li>
  </ul>
</details>

<details>
  <summary>2.</summary>
  <ul>
    <li>Open the Frescobaldi application and run <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Input/LilyPond.ly">LilyPond.ly</a> after editing the file.</li>
    <li>You can export any file and play or edit other music applications (e.g., <a href="https://musescore.org/">MuseScore</a>).</li>
    <li>Click the x button and close the application and files if you want to stop.</li>
  </ul>
</details>

<details>
  <summary>3.</summary>
  <ul>
    <li>Open <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.csd">Csound.csd</a> in CsoundQt or another application.</li>
    <li>Edit the content and run the file.</li>
    <li>If you want to control the file, run <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/Csound.qml">Csound.qml</a> in addition.</li>
    <li>Click the x button and close the application and files if you want to stop.</li>
  </ul>
</details>

<details>
  <summary>4.</summary>
  <ul>
    <li>Open files or applications capable of sending MIDI notes (e.g., <a href="https://uchida16104.github.io/SYNTHEGRATION/PDCollider/Send/SuperCollider.sc">SuperCollider.sc</a>).</li>
    <li>Open <a href="https://hydra.ojack.xyz">hydra</a> in your browser.</li>
    <li>Open and run <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/hydra.js">hydra.js</a> on hydra.</li>
    <li>Click the x button on your browser tab and in <a href="https://supercollider.github.io/">SuperCollider</a> if you want to stop.</li>
  </ul>
</details>

<details>
  <summary>5.</summary>
  <ul>
    <li>Open files or applications capable of sending MIDI notes (e.g., <a href="https://uchida16104.github.io/SYNTHEGRATION/PDCollider/Send/SuperCollider.sc">SuperCollider.sc</a>).</li>
    <li>Open and run <a href="https://uchida16104.github.io/SYNTHEGRATION/MIDIGLOBAL/Receive/SonicPI.rb">SonicPI.rb</a> on <a href="https://sonic-pi.net/">Sonic PI</a>.</li>
    <li>Click the x button on each application if you want to stop.</li>
  </ul>
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
