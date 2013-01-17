import XMonad
-- For key bindings
import qualified Data.Map as M

main = xmonad defaults

defaults = defaultConfig
		-- Use super instead of alt as the modkey
		{ modMask = mod4Mask
		, borderWidth = 2
		, normalBorderColor = "#000"
		, focusedBorderColor = "#4488FF"
		, workspaces = myWorkSpaces 
		, keys = \c -> myKeys c `M.union` keys defaultConfig c
		}

	where

	myWorkSpaces = ["1:launcher", "2:web", "3:code", "4:helper", "5:communication", "6:learn", "7:music", "8:networks", "9:org"]

	myKeys (XConfig {modMask = modm}) = M.fromList $
		[ ((mod4Mask, xK_f), spawn "firefox")
		, ((mod4Mask, xK_v), spawn "gvim")
		, ((mod4Mask, xK_e), spawn "emacs")
		, ((mod4Mask, xK_a), spawn "amarok")
		, ((mod4Mask, xK_t), spawn "transmission-gtk")
		, ((mod4Mask, xK_c), spawn "chromium-browser")
		, ((mod4Mask, xK_i), spawn "anki")
		, ((mod4Mask, xK_b), spawn "calibre")
		, ((mod4Mask, xK_g), spawn "tuxguitar")
		]
