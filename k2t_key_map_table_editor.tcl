#!/usr/bin/wish

#this file is from https://github.com/xBZZZZ/k2t/blob/m/k2t_key_map_table_editor.tcl

#https://codebrowser.dev/qt5/qtbase/src/corelib/global/qnamespace.h.html#603
#Key_Any is missing because same number as Key_Space
set keynames {16777216 Key_Escape 16777217 Key_Tab 16777218 Key_Backtab 16777219 Key_Backspace 16777220 Key_Return 16777221 Key_Enter 16777222 Key_Insert 16777223 Key_Delete 16777224 Key_Pause 16777225 Key_Print 16777226 Key_SysReq 16777227 Key_Clear 16777232 Key_Home 16777233 Key_End 16777234 Key_Left 16777235 Key_Up 16777236 Key_Right 16777237 Key_Down 16777238 Key_PageUp 16777239 Key_PageDown 16777248 Key_Shift 16777249 Key_Control 16777250 Key_Meta 16777251 Key_Alt 16777252 Key_CapsLock 16777253 Key_NumLock 16777254 Key_ScrollLock 16777264 Key_F1 16777265 Key_F2 16777266 Key_F3 16777267 Key_F4 16777268 Key_F5 16777269 Key_F6 16777270 Key_F7 16777271 Key_F8 16777272 Key_F9 16777273 Key_F10 16777274 Key_F11 16777275 Key_F12 16777276 Key_F13 16777277 Key_F14 16777278 Key_F15 16777279 Key_F16 16777280 Key_F17 16777281 Key_F18 16777282 Key_F19 16777283 Key_F20 16777284 Key_F21 16777285 Key_F22 16777286 Key_F23 16777287 Key_F24 16777288 Key_F25 16777289 Key_F26 16777290 Key_F27 16777291 Key_F28 16777292 Key_F29 16777293 Key_F30 16777294 Key_F31 16777295 Key_F32 16777296 Key_F33 16777297 Key_F34 16777298 Key_F35 16777299 Key_Super_L 16777300 Key_Super_R 16777301 Key_Menu 16777302 Key_Hyper_L 16777303 Key_Hyper_R 16777304 Key_Help 16777305 Key_Direction_L 16777312 Key_Direction_R 32 Key_Space 33 Key_Exclam 34 Key_QuoteDbl 35 Key_NumberSign 36 Key_Dollar 37 Key_Percent 38 Key_Ampersand 39 Key_Apostrophe 40 Key_ParenLeft 41 Key_ParenRight 42 Key_Asterisk 43 Key_Plus 44 Key_Comma 45 Key_Minus 46 Key_Period 47 Key_Slash 48 Key_0 49 Key_1 50 Key_2 51 Key_3 52 Key_4 53 Key_5 54 Key_6 55 Key_7 56 Key_8 57 Key_9 58 Key_Colon 59 Key_Semicolon 60 Key_Less 61 Key_Equal 62 Key_Greater 63 Key_Question 64 Key_At 65 Key_A 66 Key_B 67 Key_C 68 Key_D 69 Key_E 70 Key_F 71 Key_G 72 Key_H 73 Key_I 74 Key_J 75 Key_K 76 Key_L 77 Key_M 78 Key_N 79 Key_O 80 Key_P 81 Key_Q 82 Key_R 83 Key_S 84 Key_T 85 Key_U 86 Key_V 87 Key_W 88 Key_X 89 Key_Y 90 Key_Z 91 Key_BracketLeft 92 Key_Backslash 93 Key_BracketRight 94 Key_AsciiCircum 95 Key_Underscore 96 Key_QuoteLeft 123 Key_BraceLeft 124 Key_Bar 125 Key_BraceRight 126 Key_AsciiTilde 160 Key_nobreakspace 161 Key_exclamdown 162 Key_cent 163 Key_sterling 164 Key_currency 165 Key_yen 166 Key_brokenbar 167 Key_section 168 Key_diaeresis 169 Key_copyright 170 Key_ordfeminine 171 Key_guillemotleft 172 Key_notsign 173 Key_hyphen 174 Key_registered 175 Key_macron 176 Key_degree 177 Key_plusminus 178 Key_twosuperior 179 Key_threesuperior 180 Key_acute 181 Key_mu 182 Key_paragraph 183 Key_periodcentered 184 Key_cedilla 185 Key_onesuperior 186 Key_masculine 187 Key_guillemotright 188 Key_onequarter 189 Key_onehalf 190 Key_threequarters 191 Key_questiondown 192 Key_Agrave 193 Key_Aacute 194 Key_Acircumflex 195 Key_Atilde 196 Key_Adiaeresis 197 Key_Aring 198 Key_AE 199 Key_Ccedilla 200 Key_Egrave 201 Key_Eacute 202 Key_Ecircumflex 203 Key_Ediaeresis 204 Key_Igrave 205 Key_Iacute 206 Key_Icircumflex 207 Key_Idiaeresis 208 Key_ETH 209 Key_Ntilde 210 Key_Ograve 211 Key_Oacute 212 Key_Ocircumflex 213 Key_Otilde 214 Key_Odiaeresis 215 Key_multiply 216 Key_Ooblique 217 Key_Ugrave 218 Key_Uacute 219 Key_Ucircumflex 220 Key_Udiaeresis 221 Key_Yacute 222 Key_THORN 223 Key_ssharp 247 Key_division 255 Key_ydiaeresis 16781571 Key_AltGr 16781600 Key_Multi_key 16781623 Key_Codeinput 16781628 Key_SingleCandidate 16781629 Key_MultipleCandidate 16781630 Key_PreviousCandidate 16781694 Key_Mode_switch 16781601 Key_Kanji 16781602 Key_Muhenkan 16781603 Key_Henkan 16781604 Key_Romaji 16781605 Key_Hiragana 16781606 Key_Katakana 16781607 Key_Hiragana_Katakana 16781608 Key_Zenkaku 16781609 Key_Hankaku 16781610 Key_Zenkaku_Hankaku 16781611 Key_Touroku 16781612 Key_Massyo 16781613 Key_Kana_Lock 16781614 Key_Kana_Shift 16781615 Key_Eisu_Shift 16781616 Key_Eisu_toggle 16781617 Key_Hangul 16781618 Key_Hangul_Start 16781619 Key_Hangul_End 16781620 Key_Hangul_Hanja 16781621 Key_Hangul_Jamo 16781622 Key_Hangul_Romaja 16781624 Key_Hangul_Jeonja 16781625 Key_Hangul_Banja 16781626 Key_Hangul_PreHanja 16781627 Key_Hangul_PostHanja 16781631 Key_Hangul_Special 16781904 Key_Dead_Grave 16781905 Key_Dead_Acute 16781906 Key_Dead_Circumflex 16781907 Key_Dead_Tilde 16781908 Key_Dead_Macron 16781909 Key_Dead_Breve 16781910 Key_Dead_Abovedot 16781911 Key_Dead_Diaeresis 16781912 Key_Dead_Abovering 16781913 Key_Dead_Doubleacute 16781914 Key_Dead_Caron 16781915 Key_Dead_Cedilla 16781916 Key_Dead_Ogonek 16781917 Key_Dead_Iota 16781918 Key_Dead_Voiced_Sound 16781919 Key_Dead_Semivoiced_Sound 16781920 Key_Dead_Belowdot 16781921 Key_Dead_Hook 16781922 Key_Dead_Horn 16781923 Key_Dead_Stroke 16781924 Key_Dead_Abovecomma 16781925 Key_Dead_Abovereversedcomma 16781926 Key_Dead_Doublegrave 16781927 Key_Dead_Belowring 16781928 Key_Dead_Belowmacron 16781929 Key_Dead_Belowcircumflex 16781930 Key_Dead_Belowtilde 16781931 Key_Dead_Belowbreve 16781932 Key_Dead_Belowdiaeresis 16781933 Key_Dead_Invertedbreve 16781934 Key_Dead_Belowcomma 16781935 Key_Dead_Currency 16781952 Key_Dead_a 16781953 Key_Dead_A 16781954 Key_Dead_e 16781955 Key_Dead_E 16781956 Key_Dead_i 16781957 Key_Dead_I 16781958 Key_Dead_o 16781959 Key_Dead_O 16781960 Key_Dead_u 16781961 Key_Dead_U 16781962 Key_Dead_Small_Schwa 16781963 Key_Dead_Capital_Schwa 16781964 Key_Dead_Greek 16781968 Key_Dead_Lowline 16781969 Key_Dead_Aboveverticalline 16781970 Key_Dead_Belowverticalline 16781971 Key_Dead_Longsolidusoverlay 16777313 Key_Back 16777314 Key_Forward 16777315 Key_Stop 16777316 Key_Refresh 16777328 Key_VolumeDown 16777329 Key_VolumeMute 16777330 Key_VolumeUp 16777331 Key_BassBoost 16777332 Key_BassUp 16777333 Key_BassDown 16777334 Key_TrebleUp 16777335 Key_TrebleDown 16777344 Key_MediaPlay 16777345 Key_MediaStop 16777346 Key_MediaPrevious 16777347 Key_MediaNext 16777348 Key_MediaRecord 16777349 Key_MediaPause 16777350 Key_MediaTogglePlayPause 16777360 Key_HomePage 16777361 Key_Favorites 16777362 Key_Search 16777363 Key_Standby 16777364 Key_OpenUrl 16777376 Key_LaunchMail 16777377 Key_LaunchMedia 16777378 Key_Launch0 16777379 Key_Launch1 16777380 Key_Launch2 16777381 Key_Launch3 16777382 Key_Launch4 16777383 Key_Launch5 16777384 Key_Launch6 16777385 Key_Launch7 16777386 Key_Launch8 16777387 Key_Launch9 16777388 Key_LaunchA 16777389 Key_LaunchB 16777390 Key_LaunchC 16777391 Key_LaunchD 16777392 Key_LaunchE 16777393 Key_LaunchF 16777394 Key_MonBrightnessUp 16777395 Key_MonBrightnessDown 16777396 Key_KeyboardLightOnOff 16777397 Key_KeyboardBrightnessUp 16777398 Key_KeyboardBrightnessDown 16777399 Key_PowerOff 16777400 Key_WakeUp 16777401 Key_Eject 16777402 Key_ScreenSaver 16777403 Key_WWW 16777404 Key_Memo 16777405 Key_LightBulb 16777406 Key_Shop 16777407 Key_History 16777408 Key_AddFavorite 16777409 Key_HotLinks 16777410 Key_BrightnessAdjust 16777411 Key_Finance 16777412 Key_Community 16777413 Key_AudioRewind 16777414 Key_BackForward 16777415 Key_ApplicationLeft 16777416 Key_ApplicationRight 16777417 Key_Book 16777418 Key_CD 16777419 Key_Calculator 16777420 Key_ToDoList 16777421 Key_ClearGrab 16777422 Key_Close 16777423 Key_Copy 16777424 Key_Cut 16777425 Key_Display 16777426 Key_DOS 16777427 Key_Documents 16777428 Key_Excel 16777429 Key_Explorer 16777430 Key_Game 16777431 Key_Go 16777432 Key_iTouch 16777433 Key_LogOff 16777434 Key_Market 16777435 Key_Meeting 16777436 Key_MenuKB 16777437 Key_MenuPB 16777438 Key_MySites 16777439 Key_News 16777440 Key_OfficeHome 16777441 Key_Option 16777442 Key_Paste 16777443 Key_Phone 16777444 Key_Calendar 16777445 Key_Reply 16777446 Key_Reload 16777447 Key_RotateWindows 16777448 Key_RotationPB 16777449 Key_RotationKB 16777450 Key_Save 16777451 Key_Send 16777452 Key_Spell 16777453 Key_SplitScreen 16777454 Key_Support 16777455 Key_TaskPane 16777456 Key_Terminal 16777457 Key_Tools 16777458 Key_Travel 16777459 Key_Video 16777460 Key_Word 16777461 Key_Xfer 16777462 Key_ZoomIn 16777463 Key_ZoomOut 16777464 Key_Away 16777465 Key_Messenger 16777466 Key_WebCam 16777467 Key_MailForward 16777468 Key_Pictures 16777469 Key_Music 16777470 Key_Battery 16777471 Key_Bluetooth 16777472 Key_WLAN 16777473 Key_UWB 16777474 Key_AudioForward 16777475 Key_AudioRepeat 16777476 Key_AudioRandomPlay 16777477 Key_Subtitle 16777478 Key_AudioCycleTrack 16777479 Key_Time 16777480 Key_Hibernate 16777481 Key_View 16777482 Key_TopMenu 16777483 Key_PowerDown 16777484 Key_Suspend 16777485 Key_ContrastAdjust 16777486 Key_LaunchG 16777487 Key_LaunchH 16777488 Key_TouchpadToggle 16777489 Key_TouchpadOn 16777490 Key_TouchpadOff 16777491 Key_MicMute 16777492 Key_Red 16777493 Key_Green 16777494 Key_Yellow 16777495 Key_Blue 16777496 Key_ChannelUp 16777497 Key_ChannelDown 16777498 Key_Guide 16777499 Key_Info 16777500 Key_Settings 16777501 Key_MicVolumeUp 16777502 Key_MicVolumeDown 16777504 Key_New 16777505 Key_Open 16777506 Key_Find 16777507 Key_Undo 16777508 Key_Redo 16842751 Key_MediaLast 16842752 Key_Select 16842753 Key_Yes 16842754 Key_No 16908289 Key_Cancel 16908290 Key_Printer 16908291 Key_Execute 16908292 Key_Sleep 16908293 Key_Play 16908294 Key_Zoom 16908298 Key_Exit 17825792 Key_Context1 17825793 Key_Context2 17825794 Key_Context3 17825795 Key_Context4 17825796 Key_Call 17825797 Key_Hangup 17825798 Key_Flip 17825799 Key_ToggleCallHangup 17825800 Key_VoiceDial 17825801 Key_LastNumberRedial 17825824 Key_Camera 17825825 Key_CameraFocus 33554431 Key_unknown}

set filech {}
set editingid 0
array set editing {enable no key 0x41 x 0.0 y 0.0 width 0.0 height 0.0 pressure 1.0}
trace add variable editing write onedit

wm title . {key map table editor}

#fix window background and menus in file picker
set sbg [ttk::style lookup . -selectbackground]
set sfg [ttk::style lookup . -selectforeground]
tk_setPalette background [ttk::style lookup {} -background] foreground [ttk::style lookup . -foreground] activeBackground $sbg activeForeground $sfg selectBackground $sbg selectForeground $sfg
unset sbg sfg

ttk::button .save -text save -command onclicksave
.save state disabled
ttk::button .saveas -text {save as} -command onclicksaveas
ttk::button .open -text open -command onclickopen
ttk::button .close -text close -command onclickclose
.close state disabled
ttk::button .exit -text exit -command exit
ttk::separator .s
ttk::panedwindow .pw -orient horizontal
set c {enable key x y width height pressure}
frame .pw.l
ttk::treeview .pw.l.l -columns $c -show headings -yscrollcommand {.pw.l.r set}
foreach h $c {
	.pw.l.l column $h -width 50
	.pw.l.l heading $h -text $h -anchor w
}
set c 0
while {$c<16} {
	.pw.l.l insert {} end -id $c -values {no Key_A 0.0 0.0 0.0 0.0 1.0 65}
	incr c
}
.pw.l.l selection set 0
bind .pw.l.l <<TreeviewSelect>> onselect
ttk::scrollbar .pw.l.r -command {.pw.l.l yview}
grid columnconfigure .pw.l 0 -weight 1
grid rowconfigure .pw.l 0 -weight 1
grid .pw.l.l -column 0 -row 0 -sticky nesw
grid .pw.l.r -column 1 -row 0 -sticky nesw
frame .pw.r
ttk::labelframe .pw.r.key -text key
ttk::entry .pw.r.key.a -textvariable editing(key)
ttk::button .pw.r.key.b -text pick -command onclickpick
grid columnconfigure .pw.r.key 0 -weight 1
grid .pw.r.key.a -column 0 -row 0 -sticky nesw -padx 2
grid .pw.r.key.b -column 0 -row 1 -sticky nesw -padx 2 -pady 2
ttk::checkbutton .pw.r.enable -offvalue no -onvalue yes -variable editing(enable) -text enable
foreach {n xn yn} {pos x y ellipseDiameters width height} {
	ttk::labelframe .pw.r.$n -text $n
	ttk::label .pw.r.$n.a -text $xn -anchor e
	ttk::entry .pw.r.$n.b -textvariable editing($xn)
	ttk::label .pw.r.$n.c -text $yn -anchor e
	ttk::entry .pw.r.$n.d -textvariable editing($yn)
	grid columnconfigure .pw.r.$n 1 -weight 1
	grid .pw.r.$n.a -column 0 -row 0 -sticky nesw -padx {2 0}
	grid .pw.r.$n.b -column 1 -row 0 -sticky nesw -padx 2
	grid .pw.r.$n.c -column 0 -row 1 -sticky nesw -padx {2 0}
	grid .pw.r.$n.d -column 1 -row 1 -sticky nesw -padx 2 -pady 2
}
unset n xn yn
ttk::labelframe .pw.r.pressure -text pressure
ttk::entry .pw.r.pressure.a -textvariable editing(pressure)
ttk::scale .pw.r.pressure.b -from 0 -to 1 -variable editing(pressure)
grid columnconfigure .pw.r.pressure 0 -weight 1
grid .pw.r.pressure.a -column 0 -row 0 -sticky nesw -padx 2
grid .pw.r.pressure.b -column 0 -row 1 -sticky nesw -padx 2 -pady 2
grid columnconfigure .pw.r 0 -weight 1
grid rowconfigure .pw.r 5 -weight 1
grid .pw.r.enable -column 0 -row 0 -sticky nesw
grid .pw.r.key -column 0 -row 1 -sticky nesw
grid .pw.r.pos -column 0 -row 2 -sticky nesw
grid .pw.r.ellipseDiameters -column 0 -row 3 -sticky nesw
grid .pw.r.pressure -column 0 -row 4 -sticky nesw
.pw add .pw.l -weight 2
.pw add .pw.r -weight 1
set c 0
while {$c<5} {
	grid columnconfigure . $c -weight 1
	incr c
}
unset c
grid rowconfigure . 2 -weight 1
grid .save -column 0 -row 0 -sticky nesw
grid .saveas -column 1 -row 0 -sticky nesw -padx 4
grid .open -column 2 -row 0 -sticky nesw
grid .close -column 3 -row 0 -sticky nesw -padx 4
grid .exit -column 4 -row 0 -sticky nesw
grid .s -column 0 -row 1 -columnspan 5 -sticky nesw -pady 1
grid .pw -column 0 -row 2 -columnspan 5 -sticky nesw

proc updateediting {} {
	global editingid editing
	trace remove variable editing write onedit
	lassign [.pw.l.l item $editingid -values] editing(enable) k editing(x) editing(y) editing(width) editing(height) editing(pressure) k
	set editing(key) [format %#x $k]
	trace add variable editing write onedit
}

proc onselect {} {
	global editingid
	if {$editingid ne [set editingid [.pw.l.l selection]]} updateediting
}

proc onedit args {
	set key 0
	set x 0.0
	set y 0.0
	set width 0.0
	set height 0.0
	set pressure 1.0

	global keynames editingid editing
	scan $editing(key) %i key
	scan $editing(x) %f x
	scan $editing(y) %f y
	scan $editing(width) %f width
	scan $editing(height) %f height
	scan $editing(pressure) %f pressure

	if {[catch {dict get $keynames $key} n]} {
		set n [format %#x $key]
	}

	.pw.l.l item $editingid -values [list $editing(enable) $n $x $y $width $height $pressure $key]
}

proc onclickpick {} {
	toplevel .pick
	wm transient .pick .
	wm attributes .pick -type dialog
	wm title .pick {pick key}
	ttk::treeview .pick.l -columns {name number} -show headings -yscrollcommand {.pick.r set}
	.pick.l heading name -text name -anchor w
	.pick.l heading number -text number -anchor w
	global keynames editing
	dict for {k v} $keynames {
		.pick.l insert {} end -id $k -values [list $v [format %#x $k]]
	}
	if {1==[scan $editing(key) %i k]&&16777216!=$k&&[dict exists $keynames $k]} {
		.pick.l see $k
		.pick.l selection set $k
	} else {
		.pick.l selection set 16777216
	}
	ttk::scrollbar .pick.r -command {.pick.l yview}
	ttk::separator .pick.s
	ttk::button .pick.pick -text pick -command onclickpick2
	ttk::button .pick.cancel -text cancel -command {destroy .pick}
	ttk::sizegrip .pick.g
	grid columnconfigure .pick 0 -weight 1
	grid columnconfigure .pick 1 -weight 1
	grid rowconfigure .pick 0 -weight 1
	grid .pick.l -column 0 -row 0 -columnspan 2 -sticky nesw
	grid .pick.r -column 2 -row 0 -sticky nesw
	grid .pick.s -column 0 -row 1 -columnspan 3 -sticky nesw -pady 1
	grid .pick.pick -column 0 -row 2 -sticky nesw -padx {0 4}
	grid .pick.cancel -column 1 -row 2 -sticky nesw
	grid .pick.g -column 2 -row 2 -sticky nesw
	tkwait visibility .pick
	grab .pick
}

proc onclickpick2 {} {
	global editing
	set editing(key) [format %#x [.pick.l selection]]
	destroy .pick
}

proc onclicksave {} {
	global filech
	seek $filech 0
	set enables 0
	set qtkeys {}
	set touches {}
	set i 0
	while {$i<16} {
		if {[lindex [set l [.pw.l.l item $i -values]] 0]} {
			incr enables [tcl::mathop::<< 1 $i]
		}
		lappend qtkeys [lindex $l 7]
		lappend touches {*}[lrange $l 2 6]
		incr i
	}
	puts -nonewline $filech [binary format a6si16q80 {[k2t]0} $enables $qtkeys $touches]
}

proc onclickclose {} {
	global filech
	close $filech
	set filech {}
	.save state disabled
	.close state disabled
}

proc closefilech {} {
	global filech
	if {{} ne $filech} {
		close $filech
		set filech {}
	}
}

proc onclicksaveas {} {
	if {{} eq [set path [tk_getSaveFile -parent . -title {save key map table file} -filetypes {{{key map table} .k2t} {{} *}}]]} return
	closefilech
	global filech
	set i 1
	try {
		fconfigure [set filech [open $path w+b]] -buffering none
		set i 0
	} finally {
		if {$i} {
			#closefilech only needed if fconfigure can error, can fconfigure error?
			closefilech
			.save state disabled
			.close state disabled
		}
	}
	.save state !disabled
	.close state !disabled
	onclicksave
}

proc onclickopen {} {
	if {{} eq [set path [tk_getOpenFile -parent . -title {open key map table file} -filetypes {{{key map table} .k2t} {{} *}}]]} return
	closefilech
	global keynames filech
	set i 1
	try {
		fconfigure [set filech [open $path r+b]] -buffering none
		if {712!=[string length [set data [read $filech 712]]]} {
			error {read not 712 bytes}
		}
		binary scan $data a6si16q80 magic enables qtkeys touches
		if {{[k2t]0} ne $magic} {
			error {bad magic}
		}
		set i 0
	} finally {
		if {$i} {
			closefilech
			.save state disabled
			.close state disabled
		}
	}
	.save state !disabled
	.close state !disabled
	while {$i<16} {
		if {[catch {dict get $keynames [set k [lindex $qtkeys $i]]} n]} {
			set n [format %#x [lindex $qtkeys $i]]
		}
		set t [tcl::mathop::* 5 $i]
		.pw.l.l item $i -values [list [expr {1<<$i&$enables?yes:no}] $n {*}[lrange $touches $t [tcl::mathop::+ 4 $t]] $k]
		incr i
	}
	updateediting
}