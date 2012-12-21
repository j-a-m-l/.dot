import XMonad
-- For key bindings
import qualified Data.Map as M

main = xmonad defaults

defaults = defaultConfig
		-- Use super instead of alt as the modkey
		{ modMask = mod4Mask
		, borderWidth = 2
		, normalBorderColor = "#4488FF"
		, focusedBorderColor = "#FF4455"
		, workspaces = myWorkSpaces 
		, keys = \c -> myKeys c `M.union` keys defaultConfig c
		}

	where

	myWorkSpaces = ["1:launcher", "2:web", "3:development"]

	myKeys (XConfig {modMask = modm}) = M.fromList $
		[ ((mod4Mask, xK_f), spawn "firefox")
		, ((mod4Mask, xK_v), spawn "gvim")
		, ((mod4Mask, xK_e), spawn "emacs")
		]
