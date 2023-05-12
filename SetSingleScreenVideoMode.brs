' Single Screen VideoMode Plugin Example
' Plugin function name - setvideomode
' Plugin return type - As String
' See BrightSign docs for a list of supported video modes - https://brightsign.atlassian.net/wiki/spaces/DOC/pages/370676833/Supported+Video+Modes

' Note: This plugin assumes it is executed on BrightSign Model with a single HDMI output. 
' This will NOT work on a BrightSign Model with multiple HDMI outputs. 

Function setvideomode(videoModeInputs, bsp) As String

	print "video mode plugin: setvideomode()"

	' To customize the options of a supported video mode, use the format of the following return 
  ' statement with the customized options.
  ' See options you can set - https://brightsign.atlassian.net/wiki/spaces/DOC/pages/370672969/roVideoMode#roVideoMode-SetMode(modeAsString)AsBooleansetmode
	' return "1920x1080x60p:rgb:fullrange"


  ' Custom Modelines allow the player to play back video modes that are not natively supported in BrightAuthor:connected or BrightAuthor's Video Resolution 
  ' down and not listed under https://brightsign.atlassian.net/wiki/spaces/DOC/pages/370676833/Supported+Video+Modes.
  ' These are considered, "custom".
  ' The following code block is a example of and how to generate or grab the modeline - https://brightsign.atlassian.net/wiki/spaces/DOC/pages/420217686/Applying+a+Custom+Resolution
  vm=CreateObject("roVideoMode")
	vm.SetCustomModeline("Modeline 1440x1920x50p 151.83 1440 1490 1510 1554  1920 1935 1939 1954  -hsync -vsync")
	return "custom"

End Function