; XTERM
;
; Install new Xresources from clipboard to a urxvt terminal
; Copy the xterm recolor script to keyboard: Shift + F1
; To paste into VNC: Turn on scroll lock then press Shift + Insert
; Note: The active window must NOT be the VNC window when
; 		copying the script, but must be when pasting.
;------------------------------------------------------------------------------
PutXResources()
{
	theme =
	(LTrim Join`r`n
	echo #!/bin/bash >> /tmp/config/install.sh
	echo "if test -f /tmp/config/.Xresources; then" >> /tmp/config/install.sh
	echo rm -f /tmp/config/.Xresources >> /tmp/config/install.sh
	echo fi >> /tmp/config/install.sh

	chmod +x /tmp/config/install.sh
	/tmp/config/install.sh
	rm -f /tmp/config/install.sh

	echo ! Terminal: urxvt >> /tmp/config/.Xresources
	echo ! =============== >> /tmp/config/.Xresources
	echo ! Tango color scheme >> /tmp/config/.Xresources
	echo ! ------------------ >> /tmp/config/.Xresources
	echo "URxvt*foreground: #f8f8f2" >> /tmp/config/.Xresources
	echo "URxvt*background: #272822" >> /tmp/config/.Xresources
	echo "URxvt*cursorColor: #f8f8f2" >> /tmp/config/.Xresources
	echo "URxvt*colorUL: #8ae234" >> /tmp/config/.Xresources
	echo "URxvt*underlineColor: #92659a" >> /tmp/config/.Xresources
	echo "URxvt*color0: #272822" >> /tmp/config/.Xresources
	echo "URxvt*color8: #75715e" >> /tmp/config/.Xresources
	echo "URxvt*color1: #f92672" >> /tmp/config/.Xresources
	echo "URxvt*color9: #f92672" >> /tmp/config/.Xresources
	echo "URxvt*color2: #a6e22e" >> /tmp/config/.Xresources
	echo "URxvt*color10: #a6e22e" >> /tmp/config/.Xresources
	echo "URxvt*color3: #f4bf75" >> /tmp/config/.Xresources
	echo "URxvt*color11: #f4bf75" >> /tmp/config/.Xresources
	echo "URxvt*color4: #204c55" >> /tmp/config/.Xresources
	echo "URxvt*color12: #204c55" >> /tmp/config/.Xresources
	echo "URxvt*color5: #ae81ff" >> /tmp/config/.Xresources
	echo "URxvt*color13: #ae81ff" >> /tmp/config/.Xresources
	echo "URxvt*color6: #a1efe4" >> /tmp/config/.Xresources
	echo "URxvt*color14: #a1efe4" >> /tmp/config/.Xresources
	echo "URxvt*color7: #f8f8f2" >> /tmp/config/.Xresources
	echo "URxvt*color15: #f9f8f5" >> /tmp/config/.Xresources
	echo ! Options >> /tmp/config/.Xresources
	echo ! ------- >> /tmp/config/.Xresources
	echo URxvt.saveLines: 1000 >> /tmp/config/.Xresources
	echo URxvt.scrollBar: true >> /tmp/config/.Xresources
	echo URxvt.secondaryScroll: true >> /tmp/config/.Xresources
	echo URxvt.font: xft:Bitstream Vera Sans Mono:pixelsize=12 >> /tmp/config/.Xresources
	echo URxvt.iso14755: False >> /tmp/config/.Xresources
	echo URxvt.matcher.button: 1 >> /tmp/config/.Xresources

	xrdb -merge /tmp/config/.Xresources
	xterm -e kill $PPID && xterm & disown `r`n
	)

	BlockInput, on
	Clipboard := theme
	ClipWait
	BlockInput, off
}
;------------------------------------------------------------------------------
; HotKey to activate Xterm recolor script
; Disabled by default
;------------------------------------------------------------------------------
; +F1::
; {
; PutXResources()
; return
; }
;------------------------------------------------------------------------------
