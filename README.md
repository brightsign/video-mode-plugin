# video-mode-plugin
The Video Mode Plugin feature is designed for allowing customers to set the BrightSign videoMode.

A BrightSign Video Mode Plugin changes the video resolution, frame rate, color space and color depth.

This repository contains 2 different plugins:

* SetSingleScreenVideoMode.brs is used for single output [series 4 players and below].
* SetMultiScreensVideoMode.brs is used for multi output [series 5 players].

## Video Mode Plugin Usage

1. Update SetSingleScreenVideoMode.brs or SetMultiScreensVideoMode.brs with your expected screens settings
2. Add SetSingleScreenVideoMode.brs or SetMultiScreensVideoMode.brs to BrightAuthor or BrightAuthor:Connected (Presentation Settings > Support Content > Video Mode Plugin)


## Supporting Resources
Confluence: 
1. [MultiScreen VideoMode Configuration](https://brightsign.atlassian.net/wiki/spaces/DOC/pages/1208025142/VideoMode+Multiscreen+Configuration)
2. [Supported Video Modes](https://brightsign.atlassian.net/wiki/spaces/DOC/pages/370676833/Supported+Video+Modes)

Alternative:
1. You can also use Script Plugin and Plugin message feature to achieve setting videoMode, please see details: [BrightAuthor-Plugins/Set-Video-Mode] (https://github.com/brightsign/BrightAuthor-Plugins/tree/master/Set-Video-Mode)