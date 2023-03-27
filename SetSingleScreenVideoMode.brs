' Single Screen VideoMode Plugin Example
' Plugin function name - setvideomode
' Plugin return type - As String. See BrightSign docs for a list of supported video modes.
Function setvideomode(videoModeInputs, bsp) As String

	print "setvideomode_ForSingleScreen"

	'vm=CreateObject("roVideoMode")
	'vm.SetCustomModeline("Modeline 1280x720x30p 35.25  1280 1320 1440 1600  720 723 728 736 -hsync +vsync")
	'vm.SetCustomModeline("Modeline 1080x1920R  146.75  1080 1128 1160 1240  1920 1923 1933 1975 +hsync -vsync")
	'return "custom"
	
	'return "3840x600x60p:rblank"
	'return "3840x600x60p:rblank:fullres:gfxmemlarge"
	'return "3840x600x60p:rblank"
	'return "3840x2160x60p:rgb:fullrange"
	'return "3840x2160x60p:rgb:limitedrange"
	'return "1920x1080x60p:rgb:limitedrange"
	return "1920x1080x60p:rgb:fullrange"

End Function