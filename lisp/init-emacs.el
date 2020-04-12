
(setq inhibit-splash-screen t
      initial-scratch-message nil
      delete-selection-mode t
      transient-mark-mode t)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; (setq-default display-buffer-reuse-frames t)
(add-to-list 'display-buffer-alist
             '("." nil (reusable-frames . t)))

(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

(setq tab-width 2
      indent-tabs-mode nil)

(setq make-backup-files nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)

(show-paren-mode t)
(line-number-mode)
(column-number-mode)

; when C-l to recenter window, prefer bottom first, then middle
(setq recenter-positions '(bottom top middle))

(require 'cask 
	 (car (split-string
	       (shell-command-to-string
		"/usr/bin/find /usr/local/Cellar/cask -name cask.el"))))
(cask-initialize)

(require 'use-package)
(require 'bind-key)

(require 'exec-path-from-shell)
(setq exec-path-from-shell-check-startup-files nil)
(exec-path-from-shell-initialize)

(require 'better-defaults)

(provide 'init-emacs)
