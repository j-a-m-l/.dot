import XMonad
-- For key bindings
import qualified Data.Map as M
import qualified XMonad.StackSet as W
-- For cycling screens
import qualified XMonad.Actions.CycleWS as CWS
-- For grid selection
import XMonad.Actions.GridSelect
-- For launching xmobar
import XMonad.Util.Run
-- For output info to xmobar
import XMonad.Hooks.DynamicLog
import System.IO
-- For reserve space for xmobar
import XMonad.Hooks.ManageDocks
-- Java Swing
import XMonad.Hooks.SetWMName

-- Send applications to their dedicated Workspace
myManageHook = composeAll
        [ resource  =? "gvim"             --> doShift "1:editor"
		, className =? "Firefox"          --> doShift "3:web"
		, className =? "Iceweasel"        --> doShift "3:web"
		, resource  =? "chromium-browser" --> doShift "3:web"
		, resource  =? "icecat"           --> doShift "3:web"
		, resource  =? "opera"            --> doShift "3:web"
        , className =? "Thunderbird"      --> doShift "0:communication"
		, resource  =? "calibre"          --> doShift "5:readings"
		, resource  =? "evince"           --> doShift "5:readings"
		, className =? "Gimp"             --> doShift "6:design"
		, resource  =? "inkscape"         --> doShift "6:design"
		, resource  =? "krita"            --> doShift "6:design"
		, resource  =? "amarok"           --> doShift "7:media"
		, resource  =? "rhythmbox"        --> doShift "7:media"
		, resource  =? "tuxguitar"        --> doShift "7:media"
		, resource  =? "vlc"              --> doShift "7:media"
    , resource  =? "transmission-gtk" --> doShift "8:network"
		, resource  =? "filezilla"        --> doShift "8:network"
        , resource  =? "dolphin"          --> doShift "9:explorer"
		, resource  =? "nautilus"         --> doShift "9:explorer"
    , resource  =? "virtualbox"       --> doShift "=:limbo"
		, resource  =? "emacs"            --> doShift "-:org"
        ]

main = do
	-- Launch xmobar
	xmproc <- spawnPipe "xmobar ~/.xmonad/xmobarrc"
	xmonad defaultConfig
		{ manageHook = myManageHook <+> manageHook defaultConfig
		-- 
        , logHook = dynamicLogWithPP xmobarPP  
           { ppOutput = hPutStrLn xmproc  
           , ppTitle = xmobarColor "white" "" . shorten 50   
           -- Avoid showing the layout
           , ppLayout = const ""
           }
		-- Use super instead of alt as the modkey
		, modMask = mod4Mask
		, borderWidth = 4
		, normalBorderColor = "#000"
		, focusedBorderColor = "#4488FF"
		-- Default terminal
		, terminal = "rxvt-unicode"
		, workspaces = myWorkSpaces 
		, keys = \c -> myKeys c `M.union` keys defaultConfig c
		-- Fix Java Swing??
		, startupHook = setWMName "LG3D"
		}

		where

		myWorkSpaces = ["`:home", "1:editor", "2:console", "3:web", "4:helper", "5:readings", "6:design", "7:media", "8:network", "9:explorer", "0:communication", "-:org", "=:limbo"]

		-- Keys for the workspaces
		workSpacesKeys = [xK_quoteleft, xK_1, xK_2, xK_3, xK_4, xK_5, xK_6, xK_7, xK_8, xK_9, xK_0, xK_minus, xK_equal]

		-- Applications
		-- TODO position
		-- TODO Only use Dolphin or Nautilus or Thunar or ...
		myApplications = ["gvim -f", "firefox", "iceweasel", "chromium-browser", "thunderbird", "emacs", "amarok", "rhythmbox", "gimp", "calibre", "tuxguitar", "nautilus", "dolphin", "opera", "icecat", "midori", "transmission-gtk", "inkscape", "krita", "libreoffice", "konqueror", "virtualbox", "filezilla"]

		myKeys conf@(XConfig {modMask = modm}) = M.fromList $
			-- Use Esc instead of Shift + c
			[ ((modm .|. shiftMask, xK_c), return ())
			, ((modm, xK_Escape), kill)
			-- Move focus to other Xinerama screen.
			, ((modm, xK_Tab), CWS.nextScreen)
			-- Select applications using the grid selection
			, ((modm, xK_s), spawnSelected defaultGSConfig myApplications)
			-- Go to a workspace using the grid selection
			, ((modm, xK_g), gridselectWorkspace defaultGSConfig (\ws -> W.greedyView ws))
			-- Dmenu
			-- , (modMask, xK_m), spawn "dmenu")
			-- Commands TODO grid
			-- , ((modm		  , xK_Print   ), spawn "scrot -q 75 ${HOME}/screenshots/'%d-%m-%Y-%H-%M-%S.jpg'") -- ADDWM full print
			-- , ((myAltKey	  , xK_Print   ), spawn "sleep 1; scrot -s -q 75 ${HOME}/screenshots/'%d-%m-%Y-%H-%M-%S.jpg'") -- ADDWM only selected rectangle print
			-- Application shortcuts
			, ((modm, xK_v), spawn "gvim -f")
			, ((modm, xK_f), spawn "firefox")
			-- , ((modm, xK_c), spawn "chromium-browser")
			-- , ((modm, xK_u), spawn "thunderbird")
			]
			++
			-- mod-n, Switch to workspace N
			-- mod-shift-n, Move client to workspace N
			[((m .|. modm, k), windows $ f i)
				| (i, k) <- zip (XMonad.workspaces conf) workSpacesKeys
				, (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
