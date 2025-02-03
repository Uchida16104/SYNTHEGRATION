# PDCollider

It modulates using pitch transitions sent via midi communication from [SuperCollider](https://supercollider.github.io/) to create new sounds in real time.

![](https://uchida16104.github.io/SYNTHEGRATION/PDCollider/ScreenCapture/PureData.png)
![](https://uchida16104.github.io/SYNTHEGRATION/PDCollider/ScreenCapture/SuperCollider.png)

## Directory Structure
```
PDCollider
|-- Readme.md
|-- Receive
|   |-- PureData.pd
|-- ScreenCapture
|   |-- PureData.png
|   |-- SuperCollider.png
|-- Send
    |-- SuperCollider.sc

4 directories, 5 files
```

## How to use
1. It's recommended to be installed
* [PureData](https://puredata.info/downloads)
* [SuperCollider](https://supercollider.github.io/downloads.html)
2. Open [SuperCollider.sc](https://uchida16104.github.io/SYNTHEGRATION/PDCollider/Send/SuperCollider.sc) on [SuperCollider](https://supercollider.github.io/).
3. Evaluate [SuperCollider.sc](https://uchida16104.github.io/SYNTHEGRATION/PDCollider/Send/SuperCollider.sc) on [SuperCollider](https://supercollider.github.io/).
4. Open [PureData.pd](https://uchida16104.github.io/SYNTHEGRATION/PDCollider/Receive/PureData.pd) on [PureData](https://puredata.info/).
5. Run [PureData.pd](https://uchida16104.github.io/SYNTHEGRATION/PDCollider/Receive/PureData.pd) on [PureData](https://puredata.info/).
6. Click x button of the respective application if you stop playing.
7. Then, it stops all processes.


Hirotoshi Uchida
