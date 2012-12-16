(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; My packages
(defvar my-packages '(starter-kit
                      starter-kit-eshell
                      starter-kit-lisp
                      starter-kit-bindings
                      starter-kit-ruby
                      starter-kit-js
                      color-theme
                      magit
                      org
                      coffee-mode
                      markdown-mode
                      sass-mode
                      php-mode
                      find-file-in-project
                      flyspell
                      flymake
                      fuzzy-match
                      rainbow-delimiters
                      yaml-mode
                      scss-mode
                      feature-mode
                      apache-mode
                      flymake-jshint
                      jabber
                      move-text
                      ssh-config-mode
                      flymake-csslint
                      erlang
                      puppet-mode
                      rspec-mode
                      handlebars-mode
                      ruby-end
                      yasnippet
                      zenburn-theme
                      solarized-theme)
  "A list of packages to ensure are installed at launch.")
;; rinari http://vimeo.com/2854412

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; color-theme TODO dir without version
;;(add-to-list 'load-path (concat user-emacs-directory "/elpa/color-theme-6.5.5/"))
;;(require 'color-theme)

;; org
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; track when a task is finished
(setq org-log-done 'time)
;(setq org-default-notes-file "notes.org")

;; arduino-mode
(add-to-list 'load-path (concat user-emacs-directory "/vendor/arduino-mode"))
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)

;; mail TODO

;;(initial-buffer-choice "~/.dot.private/no.org")

;; restores the last session on start
(desktop-save-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" "bf7ed640479049f1d74319ed004a9821072c1d9331bc1147e01d22748c18ebdf" "6ef73e8f358c1150767ac39a6cc3d922053b4bb1ccb67e98d10e9155349b31af" default)))
 '(org-agenda-files (quote ("~/.dot.private/no.org")))
 '(org-modules (quote (org-bbdb org-bibtex org-docview org-gnus org-info org-jsinfo org-habit org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m)))
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
