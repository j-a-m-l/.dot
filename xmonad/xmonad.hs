import XMonad
-- For key bindings
import qualified Data.Map as M
import qualified XMonad.StackSet as W
-- For cycling screens
import qualified XMonad.Actions.CycleWS as CWS
-- Java Swing
import XMonad.Hooks.SetWMName

-- Send applications to their dedicated Workspace
myManageHook = composeAll
                [ resource  =? "gvim"             --> doShift "1:editor"
				, resource  =? "chromium-browser" --> doShift "2:web"
				, className =? "Firefox"          --> doShift "2:web"
				, resource  =? "opera"            --> doShift "2:web"
				, resource  =? "dolphin"          --> doShift "6:explorer"
				, resource  =? "amarok"           --> doShift "7:music"
				, resource  =? "transmission-gtk" --> doShift "8:network"
				, className =? "Thunderbird"      --> doShift "9:communication"
				, resource  =? "emacs"            --> doShift "0:org"
				, resource  =? "tuxguitar"        --> doShift "-:limbo"
				, resource  =? "calibre"          --> doShift "-:limbo"
				, resource  =? "anki"             --> doShift "-:limbo"
                ]

main = do
	xmonad defaultConfig
		{ manageHook = myManageHook <+> manageHook defaultConfig
		-- Use super instead of alt as the modkey
		, modMask = mod4Mask
		, borderWidth = 2
		, normalBorderColor = "#000"
		, focusedBorderColor = "#4488FF"
		, workspaces = myWorkSpaces 
		, keys = \c -> myKeys c `M.union` keys defaultConfig c
		-- Fix Java Swing??
		, startupHook = setWMName "LG3D"
		}

		where

		myWorkSpaces = ["`:home", "1:editor", "2:web", "3:console", "4:daemons", "5:helper", "6:explorer", "7:music", "8:network", "9:communication", "0:org", "-:limbo"]

		-- Keys for the workspaces
		workSpacesKeys = [xK_quoteleft, xK_1, xK_2, xK_3, xK_4, xK_5, xK_6, xK_7, xK_8, xK_9, xK_0, xK_minus]

		myKeys conf@(XConfig {modMask = modm}) = M.fromList $
			-- Use Esc instead of Shift + c
			[ ((modm .|. shiftMask, xK_c), return ())
			, ((modm, xK_Escape), kill)
			-- Move focus to other Xinerama screen.
			, ((modm, xK_Tab), CWS.nextScreen)
			, ((modm, xK_v), spawn "gvim -f")
			, ((modm, xK_e), spawn "emacs")
			, ((modm, xK_f), spawn "firefox")
			, ((modm, xK_c), spawn "chromium-browser")
			, ((modm, xK_o), spawn "opera")
			, ((modm, xK_a), spawn "amarok")
			, ((modm, xK_u), spawn "thunderbird")
			, ((modm, xK_t), spawn "transmission-gtk")
			, ((modm, xK_b), spawn "calibre")
			, ((modm, xK_g), spawn "tuxguitar")
			, ((modm, xK_d), spawn "dolphin")
			, ((modm, xK_i), spawn "anki")
			]
			++
			-- mod-n, Switch to workspace N
			-- mod-shift-n, Move client to workspace N
			[((m .|. modm, k), windows $ f i)
				| (i, k) <- zip (XMonad.workspaces conf) workSpacesKeys
				, (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
