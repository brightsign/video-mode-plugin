' Single Screen VideoMode Plugin
' Plugin function name - setVideoMode
' Plugin return type - As String
' Implementation Description - This function is intended to be used by BrightAuthor:connected or BrightAuthor, to 
' expose further video settings beyond the authoring applications. 
' The return string of this function will be directly passed to `SetVideoMode()` as the parameter in the presentation autorun.

' See BrightSign docs for a list of supported video modes - https://brightsign.atlassian.net/wiki/spaces/DOC/pages/370676833/Supported+Video+Modes

' Note: This plugin assumes it is executed on BrightSign Model with a single HDMI output.
' This will NOT work on a BrightSign Model with multiple HDMI outputs.

Function setVideoMode(videoModeInputs, bsp) As String

  print "video mode plugin, Series 4 or earlier: setVideoMode()"
  ' Example: manage the options of a supported video mode
  ' See options you can set - https://brightsign.atlassian.net/wiki/spaces/DOC/pages/370672969/roVideoMode#roVideoMode-SetMode(modeAsString)AsBooleansetmode
  ' return "1920x1080x60p:rgb:fullrange"

  ' Example: set the video mode to be a custom mode.
  ' Custom Modelines allow the player to play back video modes that are not natively supported in BrightAuthor:connected or BrightAuthor's Video Resolution
  ' down and not listed under https://brightsign.atlassian.net/wiki/spaces/DOC/pages/370676833/Supported+Video+Modes.
  ' These are considered, "custom".
  ' The following code block is a example of and how to generate or grab the modeline - https://brightsign.atlassian.net/wiki/spaces/DOC/pages/420217686/Applying+a+Custom+Resolution
  vm = CreateObject("roVideoMode")
  vm.SetCustomModeline("Modeline 1440x1920x50p 151.83 1440 1490 1510 1554  1920 1935 1939 1954  -hsync -vsync")
  return "custom"

End Function