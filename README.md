video-mode-plugin
=================

A BrightAuthor plugin that changes the video resolution, frame rate, color space and color depth.

# Usage

1. Add videomode_plugin.brs to BrightAuthor (File > Presentation Properties > Autorun)
1. Add a plugin message wherever you want to send it: Advanced tab > Add Command > Send > Send Plugin Message, pick the plugin you added in step 1, and add the text of the the plugin message e.g. "brightsign!videomode!1920x1080x60i!444!10bit" (format below)

The format of command is a set of values separated by exclamation characters:

    brightsign!videomode!<resolution/frame rate>!<color space>!<color depth>

See below for valid values for these parameters.

# Valid Resolution and Frame Rates

*Note*: this is not a complete list, and your BrightSign player may not support all these modes. Please refer to the documentation and the Video tab of your BrightSign player to see what is supported.

- 1024x768x60p
- 1024x768x75p
- 1280x1024x60p
- 1280x1024x75p
- 1280x720x50p
- 1280x720x59.94p
- 1280x720x60p
- 1280x768x60p
- 1280x800x60p
- 1280x800x75p
- 1280x960x60p
- 1360x768x60p
- 1400x1050x60p
- 1400x1050x75p
- 1440x900x60p
- 1440x900x75p
- 1600x1200x60p
- 1680x1050x60p
- 1920x1080x24p
- 1920x1080x25p
- 1920x1080x29.97p
- 1920x1080x30p
- 1920x1080x50i
- 1920x1080x50p
- 1920x1080x59.94i
- 1920x1080x59.94p
- 1920x1080x60i
- 1920x1080x60p
- 1920x1200x60p
- 3840x2160x24p
- 3840x2160x25p
- 3840x2160x29.97p
- 3840x2160x30p
- 3840x2160x50p
- 3840x2160x59.94p
- 3840x2160x60p
- 4096x2160x24p
- 4096x2160x25p
- 4096x2160x29.97p
- 4096x2160x30p
- 4096x2160x50p
- 4096x2160x59.94p
- 4096x2160x60p
- 640x480x60p
- 640x480x60p-yu
- 720x480x59.94p
- 720x480x60p
- 720x576x50p
- 800x600x60p
- 800x600x75p
- 960x960x60p
- ntsc-component
- ntsc-m
- ntsc-m-jpn
- pal-bg
- pal-component
- pal-i
- pal-m
- pal-n
- pal-nc
- secam
 
# Valid Color Spaces

- 420
- 422
- 444
- rgb

# Valid Color Depths

- 8bit
- 10bit
- 12bit
- 16bit

