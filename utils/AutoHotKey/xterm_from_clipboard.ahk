;------------------------------------------------------------------------------
; CHANGELOG:
;
; September 28, 2022: Initial public release by EanNewton
;
; INTRODUCTION
; Send and merge a new xterm color scheme from the Clipboard
; Created to be used for over VNC connections
; by Ean Newton.
;------------------------------------------------------------------------------


Footer = 
(
	echo ! Options >> /tmp/config/.Xresources
	echo ! ------- >> /tmp/config/.Xresources
	echo URxvt.saveLines: 1000 >> /tmp/config/.Xresources
	echo URxvt.scrollBar: true >> /tmp/config/.Xresources
	echo URxvt.secondaryScroll: true >> /tmp/config/.Xresources
	echo URxvt.font: xft:Bitstream Vera Sans Mono:pixelsize=12 >> /tmp/config/.Xresources
	echo URxvt.iso14755: False >> /tmp/config/.Xresources
	echo URxvt.urlLauncher: firefox >> /tmp/config/.Xresources
	echo URxvt.matcher.button: 1 >> /tmp/config/.Xresources
)

tango =
(
	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Tango color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #eeeeec" >> /tmp/config/.Xresources
	echo "URxvt*background: #2e3436" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #8ae234" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #8ae234" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo ! - Aluminium - >> /tmp/config/.Xresources
	echo "URxvt*color0: #2e3436" >> /tmp/config/.Xresources
	echo "URxvt*color8: #888A85" >> /tmp/config/.Xresources
	echo ! - Scariet Red - >> /tmp/config/.Xresources
	echo "URxvt*color1: #cc0000" >> /tmp/config/.Xresources
	echo "URxvt*color9: #ef2929" >> /tmp/config/.Xresources
	echo ! - Chameleon - >> /tmp/config/.Xresources
	echo "URxvt*color2: #4e9a06" >> /tmp/config/.Xresources
	echo "URxvt*color10: #8ae234" >> /tmp/config/.Xresources
	echo ! - Butter - >> /tmp/config/.Xresources
	echo "URxvt*color3: #edd400" >> /tmp/config/.Xresources
	echo "URxvt*color11: #fce94f" >> /tmp/config/.Xresources
	echo ! - Sky Blue - >> /tmp/config/.Xresources
	echo "URxvt*color4: #3465a4" >> /tmp/config/.Xresources
	echo "URxvt*color12: #729fcf" >> /tmp/config/.Xresources
	echo ! - Plum - >> /tmp/config/.Xresources
	echo "URxvt*color5: #92659a" >> /tmp/config/.Xresources
	echo "URxvt*color13: #c19fbe" >> /tmp/config/.Xresources
	echo ! - Cyan - >> /tmp/config/.Xresources
	echo "URxvt*color6: #07c7ca" >> /tmp/config/.Xresources
	echo "URxvt*color14: #63e9e9" >> /tmp/config/.Xresources
	echo ! - Aluminium 2 - >> /tmp/config/.Xresources
	echo "URxvt*color7: #d3d7cf" >> /tmp/config/.Xresources
	echo "URxvt*color15: #eeeeec" >> /tmp/config/.Xresources
	echo ! Options >> /tmp/config/.Xresources
	echo ! ------- >> /tmp/config/.Xresources
	%Footer%
)

codeschool =
(
	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Codeschool color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #9ea7a6" >> /tmp/config/.Xresources
	echo "URxvt*background: #232c31" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #9ea7a6" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #9ea7a6" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo ! - Black - >> /tmp/config/.Xresources
	echo "URxvt*color0: #232c31" >> /tmp/config/.Xresources
	echo "URxvt*color8: #3f4944" >> /tmp/config/.Xresources
	echo ! - Red - >> /tmp/config/.Xresources
	echo "URxvt*color1: #2a5491" >> /tmp/config/.Xresources
	echo "URxvt*color9: #2a5491" >> /tmp/config/.Xresources
	echo ! - Green - >> /tmp/config/.Xresources
	echo "URxvt*color2: #237986" >> /tmp/config/.Xresources
	echo "URxvt*color10: #237986" >> /tmp/config/.Xresources
	echo ! - Yellow - >> /tmp/config/.Xresources
	echo "URxvt*color3: #a03b1e" >> /tmp/config/.Xresources
	echo "URxvt*color11: #a03b1e" >> /tmp/config/.Xresources
	echo ! - Blue - >> /tmp/config/.Xresources
	echo "URxvt*color4: #484d79" >> /tmp/config/.Xresources
	echo "URxvt*color12: #484d79" >> /tmp/config/.Xresources
	echo ! - Magenta - >> /tmp/config/.Xresources
	echo "URxvt*color5: #c59820" >> /tmp/config/.Xresources
	echo "URxvt*color13: #c59820" >> /tmp/config/.Xresources
	echo ! - Cyan - >> /tmp/config/.Xresources
	echo "URxvt*color6: #b02f30" >> /tmp/config/.Xresources
	echo "URxvt*color14: #b02f30" >> /tmp/config/.Xresources
	echo ! - White - >> /tmp/config/.Xresources
	echo "URxvt*color7: #9ea7a6" >> /tmp/config/.Xresources
	echo "URxvt*color15: #b5d8f6" >> /tmp/config/.Xresources
	%Footer%
)

paraiso =
(
	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Paraiso color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #4f424c" >> /tmp/config/.Xresources
	echo "URxvt*background: #e7e9db" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #4f424c" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #4f424c" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo ! - Black - >> /tmp/config/.Xresources
	echo "URxvt*color0: #2f1e2e" >> /tmp/config/.Xresources
	echo "URxvt*color8: #776e71" >> /tmp/config/.Xresources
	echo ! - Red - >> /tmp/config/.Xresources
	echo "URxvt*color1: #ef6155" >> /tmp/config/.Xresources
	echo "URxvt*color9: #ef6155" >> /tmp/config/.Xresources
	echo ! - Green - >> /tmp/config/.Xresources
	echo "URxvt*color2: #48b685" >> /tmp/config/.Xresources
	echo "URxvt*color10: #48b685" >> /tmp/config/.Xresources
	echo ! - Yellow - >> /tmp/config/.Xresources
	echo "URxvt*color3: #fec418" >> /tmp/config/.Xresources
	echo "URxvt*color11: #fec418" >> /tmp/config/.Xresources
	echo ! - Blue - >> /tmp/config/.Xresources
	echo "URxvt*color4: #06b6ef" >> /tmp/config/.Xresources
	echo "URxvt*color12: #06b6ef" >> /tmp/config/.Xresources
	echo ! - Magenta - >> /tmp/config/.Xresources
	echo "URxvt*color5: #815ba4" >> /tmp/config/.Xresources
	echo "URxvt*color13: #815ba4" >> /tmp/config/.Xresources
	echo ! - Cyan - >> /tmp/config/.Xresources
	echo "URxvt*color6: #5bc4bf" >> /tmp/config/.Xresources
	echo "URxvt*color14: #5bc4bf" >> /tmp/config/.Xresources
	echo ! - White - >> /tmp/config/.Xresources
	echo "URxvt*color7: #a39e9b" >> /tmp/config/.Xresources
	echo "URxvt*color15: #4f424c" >> /tmp/config/.Xresources
	%Footer%
)

bespin =
(
	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Bespin color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #8a8986" >> /tmp/config/.Xresources
	echo "URxvt*background: #28211c" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #8a8986" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #8a8986" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo ! - Black - >> /tmp/config/.Xresources
	echo "URxvt*color0: #28211c" >> /tmp/config/.Xresources
	echo "URxvt*color8: #666666" >> /tmp/config/.Xresources
	echo ! - Red - >> /tmp/config/.Xresources
	echo "URxvt*color1: #cf6a4c" >> /tmp/config/.Xresources
	echo "URxvt*color9: #cf6a4c" >> /tmp/config/.Xresources
	echo ! - Green - >> /tmp/config/.Xresources
	echo "URxvt*color2: #54be0d" >> /tmp/config/.Xresources
	echo "URxvt*color10: #54be0d" >> /tmp/config/.Xresources
	echo ! - Yellow - >> /tmp/config/.Xresources
	echo "URxvt*color3: #f9ee98" >> /tmp/config/.Xresources
	echo "URxvt*color11: #f9ee98" >> /tmp/config/.Xresources
	echo ! - Blue - >> /tmp/config/.Xresources
	echo "URxvt*color4: #5ea6ea" >> /tmp/config/.Xresources
	echo "URxvt*color12: #5ea6ea" >> /tmp/config/.Xresources
	echo ! - Magenta - >> /tmp/config/.Xresources
	echo "URxvt*color5: #9b859d" >> /tmp/config/.Xresources
	echo "URxvt*color13: #9b859d" >> /tmp/config/.Xresources
	echo ! - Cyan - >> /tmp/config/.Xresources
	echo "URxvt*color6: #afc4db" >> /tmp/config/.Xresources
	echo "URxvt*color14: #afc4db" >> /tmp/config/.Xresources
	echo ! - White - >> /tmp/config/.Xresources
	echo "URxvt*color7: #8a8986" >> /tmp/config/.Xresources
	echo "URxvt*color15: #baae9e" >> /tmp/config/.Xresources
	%Footer%
)

oceanDark =
(
	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Dark Ocean color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #c0c5ce" >> /tmp/config/.Xresources
	echo "URxvt*background: #2b303b" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #c0c5ce" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #c0c5ce" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo ! - Black - >> /tmp/config/.Xresources
	echo "URxvt*color0: #2b303b" >> /tmp/config/.Xresources
	echo "URxvt*color8: #65737e" >> /tmp/config/.Xresources
	echo ! - Red - >> /tmp/config/.Xresources
	echo "URxvt*color1: #bf616a" >> /tmp/config/.Xresources
	echo "URxvt*color9: #bf616a" >> /tmp/config/.Xresources
	echo ! - Green - >> /tmp/config/.Xresources
	echo "URxvt*color2: #a3be8c" >> /tmp/config/.Xresources
	echo "URxvt*color10: #a3be8c" >> /tmp/config/.Xresources
	echo ! - Yellow - >> /tmp/config/.Xresources
	echo "URxvt*color3: #ebcb8b" >> /tmp/config/.Xresources
	echo "URxvt*color11: #ebcb8b" >> /tmp/config/.Xresources
	echo ! - Blue - >> /tmp/config/.Xresources
	echo "URxvt*color4: #8fa1b3" >> /tmp/config/.Xresources
	echo "URxvt*color12: #8fa1b3" >> /tmp/config/.Xresources
	echo ! - Magenta - >> /tmp/config/.Xresources
	echo "URxvt*color5: #b48ead" >> /tmp/config/.Xresources
	echo "URxvt*color13: #b48ead" >> /tmp/config/.Xresources
	echo ! - Cyan - >> /tmp/config/.Xresources
	echo "URxvt*color6: #96b5b4" >> /tmp/config/.Xresources
	echo "URxvt*color14: #96b5b4" >> /tmp/config/.Xresources
	echo ! - White - >> /tmp/config/.Xresources
	echo "URxvt*color7: #c0c5ce" >> /tmp/config/.Xresources
	echo "URxvt*color15: #eff1f5" >> /tmp/config/.Xresources
	%Footer%
)

oceanLight =
(
	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Light Ocean color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #4f5b66" >> /tmp/config/.Xresources
	echo "URxvt*background: #eff1f5" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #4f5b66" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #4f5b66" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo ! - Black - >> /tmp/config/.Xresources
	echo "URxvt*color0: #2b303b" >> /tmp/config/.Xresources
	echo "URxvt*color8: #65737e" >> /tmp/config/.Xresources
	echo ! - Red - >> /tmp/config/.Xresources
	echo "URxvt*color1: #bf616a" >> /tmp/config/.Xresources
	echo "URxvt*color9: #bf616a" >> /tmp/config/.Xresources
	echo ! - Green - >> /tmp/config/.Xresources
	echo "URxvt*color2: #a3be8c" >> /tmp/config/.Xresources
	echo "URxvt*color10: #67a632" >> /tmp/config/.Xresources
	echo ! - Yellow - >> /tmp/config/.Xresources
	echo "URxvt*color3: #d39c30" >> /tmp/config/.Xresources
	echo "URxvt*color11: #ebcb8b" >> /tmp/config/.Xresources
	echo ! - Blue - >> /tmp/config/.Xresources
	echo "URxvt*color4: #8fa1b3" >> /tmp/config/.Xresources
	echo "URxvt*color12: #397cc0" >> /tmp/config/.Xresources
	echo ! - Magenta - >> /tmp/config/.Xresources
	echo "URxvt*color5: #b48ead" >> /tmp/config/.Xresources
	echo "URxvt*color13: #b48ead" >> /tmp/config/.Xresources
	echo ! - Cyan - >> /tmp/config/.Xresources
	echo "URxvt*color6: #96b5b4" >> /tmp/config/.Xresources
	echo "URxvt*color14: #96b5b4" >> /tmp/config/.Xresources
	echo ! - White - >> /tmp/config/.Xresources
	echo "URxvt*color7: #898d93" >> /tmp/config/.Xresources
	echo "URxvt*color15: #4f5b66" >> /tmp/config/.Xresources
	%Footer%
)


defaultDark =
(
	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Dark color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #d0d0d0" >> /tmp/config/.Xresources
	echo "URxvt*background: #151515" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #d0d0d0" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #d0d0d0" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo ! - Black - >> /tmp/config/.Xresources
	echo "URxvt*color0: #151515" >> /tmp/config/.Xresources
	echo "URxvt*color8: #505050" >> /tmp/config/.Xresources
	echo ! - Red - >> /tmp/config/.Xresources
	echo "URxvt*color1: #ac4142" >> /tmp/config/.Xresources
	echo "URxvt*color9: #ac4142" >> /tmp/config/.Xresources
	echo ! - Green - >> /tmp/config/.Xresources
	echo "URxvt*color2: #90a959" >> /tmp/config/.Xresources
	echo "URxvt*color10: #90a959" >> /tmp/config/.Xresources
	echo ! - Yellow - >> /tmp/config/.Xresources
	echo "URxvt*color3: #f4bf75" >> /tmp/config/.Xresources
	echo "URxvt*color11: #f4bf75" >> /tmp/config/.Xresources
	echo ! - Directories - >> /tmp/config/.Xresources
	echo ! - Blue - >> /tmp/config/.Xresources
	echo "URxvt*color4: #6a9fb5" >> /tmp/config/.Xresources
	echo "URxvt*color12: #6a9fb5" >> /tmp/config/.Xresources
	echo ! - Magenta - >> /tmp/config/.Xresources
	echo "URxvt*color5: #aa759f" >> /tmp/config/.Xresources
	echo "URxvt*color13: #aa759f" >> /tmp/config/.Xresources
	echo ! - Cyan - >> /tmp/config/.Xresources
	echo "URxvt*color6: #75b5aa" >> /tmp/config/.Xresources
	echo "URxvt*color14: #75b5aa" >> /tmp/config/.Xresources
	echo ! - White - >> /tmp/config/.Xresources
	echo "URxvt*color7: #d0d0d0" >> /tmp/config/.Xresources
	echo "URxvt*color15: #f5f5f5" >> /tmp/config/.Xresources
	%Footer%
)

defaultLight =
(
	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Light color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #303030" >> /tmp/config/.Xresources
	echo "URxvt*background: #f5f5f5" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #303030" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #303030" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo ! - Black - >> /tmp/config/.Xresources
	echo "URxvt*color0: #151515" >> /tmp/config/.Xresources
	echo "URxvt*color8: #505050" >> /tmp/config/.Xresources
	echo ! - Red - >> /tmp/config/.Xresources
	echo "URxvt*color1: #ac4142" >> /tmp/config/.Xresources
	echo "URxvt*color9: #ac4142" >> /tmp/config/.Xresources
	echo ! - Green - >> /tmp/config/.Xresources
	echo "URxvt*color2: #90a959" >> /tmp/config/.Xresources
	echo "URxvt*color10: #90a959" >> /tmp/config/.Xresources
	echo ! - Yellow - >> /tmp/config/.Xresources
	echo "URxvt*color3: #f4bf75" >> /tmp/config/.Xresources
	echo "URxvt*color11: #f4bf75" >> /tmp/config/.Xresources
	echo ! - Blue - >> /tmp/config/.Xresources
	echo "URxvt*color4: #6a9fb5" >> /tmp/config/.Xresources
	echo "URxvt*color12: #6a9fb5" >> /tmp/config/.Xresources
	echo ! - Magenta - >> /tmp/config/.Xresources
	echo "URxvt*color5: #aa759f" >> /tmp/config/.Xresources
	echo "URxvt*color13: #aa759f" >> /tmp/config/.Xresources
	echo ! - Cyan - >> /tmp/config/.Xresources
	echo "URxvt*color6: #75b5aa" >> /tmp/config/.Xresources
	echo "URxvt*color14: #75b5aa" >> /tmp/config/.Xresources
	echo ! - White - >> /tmp/config/.Xresources
	echo "URxvt*color7: #909090" >> /tmp/config/.Xresources
	echo "URxvt*color15: #303030" >> /tmp/config/.Xresources
	%Footer%
)

; Install new Xresources from clipboard
Put()
{
	global skin
	global SkinName

	theme =
	(LTrim Join`r`n
	echo #!/bin/bash >> /tmp/config/install.sh
	echo "if test -f /tmp/config/.Xresources; then" >> /tmp/config/install.sh
	echo rm -f /tmp/config/.Xresources >> /tmp/config/install.sh
	echo fi >> /tmp/config/install.sh

	chmod +x /tmp/config/install.sh
	/tmp/config/install.sh
	rm -f /tmp/config/install.sh

	%skin%

	xrdb -merge /tmp/config/.Xresources
	xterm -e kill $PPID && xterm & disown `r`n
	)

	BlockInput, on
	Clipboard := theme
	ClipWait
	BlockInput, off
}


+F10::
skin := tango
SkinName := "Tango"
Put()
return

+F9::
skin := tango
SkinName := "Tango"
Put()
return

+F8::
skin := tango
SkinName := "Tango"
Put()
return

+F7::
skin := oceanLight
SkinName := "oceanLight"
Put()
return

+F6::
skin := oceanDark
SkinName := "Ocean Dark"
Put()
return

+F5::
skin := bespin
SkinName := "Bespin"
Put()
return

+F4::
skin := codeschool
SkinName := "Codeschool"
Put()
return

+F3::
skin := paraiso
SkinName := "Paraiso"
Put()
return

+F2::
skin := defaultDark
SkinName := "Default Dark"
Put()
return

+F1::
skin := defaultLight
SkinName := "Defaut Light"
Put()
return
