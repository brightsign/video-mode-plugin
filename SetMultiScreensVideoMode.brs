' Multi Screens VideoMode Plugin Example
' Plugin function name - setvideomode
' Plugin return type - As Object (array): see below example, it is plugin's responsibility to
' return the same format as GetScreenModes() returns. Then the presentation autorun will
' pick up your ScreenConfigList and set video modes for your screens.

' Note: This plugin assumes it is executed on BrightSign Model with Multiple HDMI outputs.

' Minimum BrightAuthor:connected version: v1.11.0

Function setvideomode(videoModeInputs, bsp) As Object

  print "setvideomode_ForMultiScreens"
  ' See details regarding multiScreen configuration -
  ' https://brightsign.atlassian.net/wiki/spaces/DOC/pages/1208025142/VideoMode+Multiscreen+Configuration
  vm = CreateObject("roVideoMode")
  sm = vm.GetScreenModes()

  ' For using BrightAuthor:Connected, it is recommended that the fullres modifier be added to prevent
  ' the zones from scaling across the entire canvas.
  sm[0].name = "HDMI-1"
  sm[0].video_mode = "Modeline 1440x1920x50p 151.83 1440 1490 1510 1554  1920 1935 1939 1954  -hsync -vsync"
  sm[0].transform = "normal"
  sm[0].display_x = 0
  sm[0].display_y = 0
  sm[0].enabled = true

  
  ' Safeguard for models more than 2 HDMI outputs
  if (sm[1] <> invalid and Instr(0, sm[1].name, "HDMI") <> 0) then
    ' sm[1].name = "HDMI-2"
    ' sm[1].video_mode="1920x1080x29.97p:rblank:fullres"
    ' sm[1].transform = "normal"
    ' sm[1].display_x=1440
    ' sm[1].display_y=0
    sm[1].enabled = false
  end if

  ' Safeguard for models more than 2 HDMI outputs
  if (sm[2] <> invalid and Instr(0, sm[2].name, "HDMI") <> 0) then
    ' sm[2].name = "HDMI-3"
    ' sm[2].video_mode="1920x1200x59.94p:rblank:fullres"
    ' sm[2].transform = "normal"
    ' sm[2].display_x=0
    ' sm[2].display_y=3000
    sm[2].enabled = false
  end if

  ' Safeguard for models more than 2 HDMI outputs
  if (sm[3] <> invalid and Instr(0, sm[3].name, "HDMI") <> 0) then
    ' sm[3].name = "HDMI-4"
    ' sm[3].video_mode="1920x540x29.97p:rblank:fullres"
    ' sm[3].transform = "normal"
    ' sm[3].display_x=1920
    ' sm[3].display_y=3000
    sm[3].enabled = false
  end if

  return sm

End Function