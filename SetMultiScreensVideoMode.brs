' Multi Screens VideoMode Plugin Example
' Plugin function name - setvideomode
' Plugin return type - As Array: see below example, it is plugin's responsibility to 
' return the same format as GetScreenModes() returns. Then the presentation autorun will
' pick up your ScreenConfigList and set video modes for your screens.

Function setvideomode(videoModeInputs, bsp)

	print "setvideomode_ForMultiScreens"
	' See details regarding multiScreen configuration - https://brightsign.atlassian.net/wiki/spaces/DOC/pages/1208025142/VideoMode+Multiscreen+Configuration
	vm = CreateObject("roVideoMode")
	sm = vm.GetScreenModes()

  ' For using BrightAuthor:Connected, it is recommended that the fullres modifier be added to prevent the zones from scaling across the entire canvas.
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
