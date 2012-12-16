;; movement key bindings (like vi)
;;(global-set-key "\C-h" 'backward-char)
;;(global-set-key "\C-j" 'next-line)
;;(global-set-key "\C-k" 'previous-line)
;;(global-set-key "\C-l" 'forward-char)

(set-default 'tab-width 2)

(set-face-foreground 'vertical-border "white")
(set-face-background 'vertical-border "white")

;;(eval-after-load "color-theme"
;;'(progn
;;(color-theme-ugly-one)))
(load-theme 'zenburn t)

(add-to-list 'load-path (concat user-emacs-directory "elpa/yasnippet-0.8.0/yasnippet.el"))
(require 'yasnippet)
;;(yas/initialize)
(yas/load-directory (concat user-emacs-directory "elpa/yasnippet-0.8.0/snippets"))
