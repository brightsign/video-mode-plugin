' Single Screen VideoMode Plugin Example
' Plugin function name - setvideomode
' Plugin return type - As String
' See BrightSign docs for a list of supported video modes - [Supported Video Modes](https://brightsign.atlassian.net/wiki/spaces/DOC/pages/370676833/Supported+Video+Modes)

Function setvideomode(videoModeInputs, bsp) As String

	print "setvideomode_ForSingleScreen"

	'Line 11-13 is a example of [applying a Custom Resolution] (https://brightsign.atlassian.net/wiki/spaces/DOC/pages/420217686/Applying+a+Custom+Resolution)
	'vm=CreateObject("roVideoMode")
	'vm.SetCustomModeline("Modeline 1280x720x30p 35.25  1280 1320 1440 1600  720 723 728 736 -hsync +vsync")
	'return "custom"
	
	'return "3840x600x60p:rblank"
	'return "3840x600x60p:rblank:fullres:gfxmemlarge"
	'return "3840x600x60p:rblank"
	'return "3840x2160x60p:rgb:fullrange"
	'return "3840x2160x60p:rgb:limitedrange"
	'return "1920x1080x60p:rgb:limitedrange"
	return "1920x1080x60p:rgb:fullrange"

End Function