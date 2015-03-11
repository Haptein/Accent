;; AutoHotkey Version: 1.x      ; Language: English     :Platform: Win8.1/Win7/Win9x/NT
;  Author: b23
Version=1.1

#NoEnv  ; Recommended for performance and compatibility with future AHK releases.
SendMode Input  ; Superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
toggle=0 ; disabled
Menu, Tray, Add
Menu, Tray, Default
Menu, Tray, Click, 1 
Menu, tray, NoStandard
Menu, tray, add, Startup Automatically, StartupConfig
IfEqual, A_ScriptDir, %A_Startup%
   {
      Menu, tray, ToggleCheck, Startup Automatically
   }
Menu, Tray, add, Help, OpenHelp
Menu, tray, add, Exit, Exit

Ctrl & ':: Suspend

#MaxThreadsPerHotkey 2
$':: 
GetKeyState, sls, ScrollLock, T
IfEqual, sls, U
{
SetScrollLockState, On
Input, aki, L1 V T1.5, {ScrollLock}{'}
SetScrollLockState, Off
}
Else
{
Send {'}
SetScrollLockState, Off
}
Return

#MaxThreadsPerHotkey 1

$a::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send Á
	}
	Else
	{
	Send á
	}
}
Else
{
	Send {Blind}a
}
SetScrollLockState, Off
Return

Shift & a::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send á
	}
	Else
	{
	Send Á
	}
}
Else
{
	Send {Blind}a
}
SetScrollLockState, Off
Return

$e::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send É
	}
	Else
	{
	Send é
	}
}
Else
{
	Send {Blind}e
}
SetScrollLockState, Off
Return

Shift & e::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send é
	}
	Else
	{
	Send É
	}
}
Else
{
	Send {Blind}e
}
SetScrollLockState, Off
Return

$i::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send Í
	}
	Else
	{
	Send í
	}
}
Else
{
	Send {Blind}i
}
SetScrollLockState, Off
Return

Shift & i::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send í
	}
	Else
	{
	Send Í
	}
}
Else
{
	Send {Blind}i
}
SetScrollLockState, Off
Return

$o::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send Ó
	}
	Else
	{
	Send ó
	}
}
Else
{
	Send {Blind}o
}
SetScrollLockState, Off
Return

Shift & o::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send ó
	}
	Else
	{
	Send Ó
	}
}
Else
{
	Send {Blind}o
}
SetScrollLockState, Off
Return

$u::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send Ú
	}
	Else
	{
	Send ú
	}
}
Else
{
	Send {Blind}u
}
SetScrollLockState, Off
Return

Shift & u::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send ú
	}
	Else
	{
	Send Ú
	}
}
Else
{
	Send {Blind}u
}
SetScrollLockState, Off
Return

$n::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send Ñ
	}
	Else
	{
	Send ñ
	}
}
Else
{
	Send {Blind}n
}
SetScrollLockState, Off
Return

Shift & n::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send ñ
	}
	Else
	{
	Send Ñ
	}
}
Else
{
	Send {Blind}n
}
SetScrollLockState, Off
Return

$w::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send Ü
	}
	Else
	{
	Send ü
	}
}
Else
{
	Send {Blind}w
}
SetScrollLockState, Off
Return

Shift & w::
GetKeyState, sls, ScrollLock, T
GetKeyState, cls, CapsLock, T
IfEqual, sls, D
{
	IfEqual, cls, D
	{
	Send ü
	}
	Else
	{
	Send Ü
	}
}
Else
{
	Send {Blind}w
}
SetScrollLockState, Off
Return

$/::
GetKeyState, sls, ScrollLock, T
IfEqual, sls, D
{
Send ¿
}
Else
{
Send /
}
SetScrollLockState, Off
Return

$1::
GetKeyState, sls, ScrollLock, T
IfEqual, sls, D
{
Send ¡
}
Else
{
Send 1
}
SetScrollLockState, Off
Return

$,::
GetKeyState, sls, ScrollLock, T
IfEqual, sls, D
{
Send «
}
Else
{
Send {,}
}
SetScrollLockState, Off
Return

$.::
GetKeyState, sls, ScrollLock, T
IfEqual, sls, D
{
Send »
}
Else
{
Send .
}
SetScrollLockState, Off
Return


OpenHelp:
Msgbox, , Help,
(
Ver.%Version%
To uninstall, simply delete this file: %A_ScriptFullPath%

Reference:
Input			Output

Press the ' key to use as modifier.
a			á
e			é
i			í
o			ó
u			ú
ñ			ñ
w			ü
/			¿
1			¡
,			«
.			»	

Press ' twice		'
Shift + '			"
Ctrl + '		Toggles Script Functions On/Off	
)
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	Common Config Below
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


StartupConfig:
Msgbox, 35, Do you want this program to start automatically?, 
(
Clicking YES will move this program to your startup folder. Windows will then automatically 

launch it every time you boot your computer. 
Clicking NO will move this program out of your startup folder and onto your Desktop.
Clicking CANCEL will do nothing.
)
IfMsgbox, YES
   {
      IfEqual, A_ScriptDir, %A_Startup%
      {
         Msgbox, Already in Startup folder. No action taken.
         return
      }
      FileMove, %A_ScriptFullPath%, %A_Startup%, 1 ; known issue: this doesn't delete the 

original file if it's on a different drive
      if ErrorLevel
         Msgbox, Something went wrong! :(
      ; can't simply Reload, b/c not in original location anymore
      ; all of this is so can move to startup, then move out w/o restarting script manually
      Run, %A_Startup%\%A_ScriptName%
      ExitApp
   }
IfMsgbox, NO
   {
      IfEqual, A_ScriptDir, %A_Startup%
      {
         FileMove, %A_ScriptFullPath%, %A_Desktop%, 1
         Run, %A_Desktop%\%A_ScriptName%
         ExitApp
      }
      else
      {
         Msgbox, Already not in Startup folder. No action taken.
      }
   }
return

Exit:
ExitApp
