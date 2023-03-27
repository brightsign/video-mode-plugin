' Multi Screens VideoMode Plugin Example
' Plugin function name - setvideomode
' Plugin return type - As Array: For series5 players, it is plugin's responsibility to 
' return the same format as GetScreenModes() returns. Then the presentation autorun will
' pick up your ScreenConfigList and set video modes for your screens.
' Note: BrightAuthor:connected always sets :fullres on all of the videomodes for the XC5
Function setvideomode(videoModeInputs, bsp)

	print "setvideomode_ForMultiScreens"

	vm = CreateObject("roVideoMode")
	sm = vm.GetScreenModes()

	sm[0].video_mode="3840x2160x29.97p:rblank:fullres"
	sm[0].transform = "normal"
	sm[0].display_x=0
	sm[0].display_y=0
	sm[0].enabled=true

	sm[1].video_mode="3840x2160x29.97p:rblank:fullres"
	sm[1].transform = "normal"
	sm[1].display_x=3840
	sm[1].display_y=0
	sm[1].enabled=true

	sm[2].video_mode="3840x2160x59.94p:rblank:fullres"
	sm[2].transform = "normal"
	sm[2].display_x=0
	sm[2].display_y=2160
	sm[2].enabled=true

	sm[3].video_mode="1920x1080x29.97p:rblank:fullres"
	sm[3].transform = "normal"
	sm[3].display_x=3840
	sm[3].display_y=2160
	sm[3].enabled=true

	return sm

 End Function
