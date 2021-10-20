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

;; Erlang
;(setq erlang-indent-level 2)
(setq *erlang-indent-size* 2)
;(setq indent-tabs-mode nil)
(setq tab-width *erlang-indent-size*)
(setq erlang-indent-level *erlang-indent-size*)

;; Org
;; track when a task is finished
(setq org-log-done 'time)
;(setq org-default-notes-file "notes.org")

(add-to-list 'load-path (concat user-emacs-directory "elpa/key-chord-0.5.20080915"))
(require 'key-chord)
(setq key-chord-two-keys-delay 0.2)
(key-chord-mode 1)

;; MUAHAHAHAHA
(add-to-list 'load-path (concat user-emacs-directory "elpa/evil-0.0.0"))
(require 'evil)
(evil-mode 1)

;; jj and jk as escape key sequence
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

;; movement key bindings (like vi)
;;(global-set-key "\C-h" 'backward-char)
;;(global-set-key "\C-j" 'next-line)
;;(global-set-key "\C-k" 'previous-line)
;;(global-set-key "\C-l" 'forward-char)

