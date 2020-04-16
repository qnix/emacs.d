
(defvar qnix/frame-alist '((font . "Monaco-15")
                           (top . 2) (left . 2)
                           (width . 94) (height . 44)))

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

(setq initial-frame-alist qnix/frame-alist)
(setq default-frame-alist qnix/frame-alist)

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

; always delete the trailing whitespaces
(use-package simple
  :config
  (add-hook 'before-save-hook 'delete-trailing-whitespace))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Swiper Ivy-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Use ivy-mode to replace icomplete and ido (both bundled with emacs)
;; (require 'icomplete)
;; (require 'ido)

;; Provide better search and complete feature in the minibuffer
(use-package ivy
  :bind (("C-x b" . ivy-switch-buffer)
         ("C-c C-r" . ivy-resume))
  :diminish (ivy-mode)
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq enable-recursive-minibuffers t)
  :config
  (ivy-mode 1))

(use-package swiper
  :bind (("C-s" . swiper)))

(provide 'init-emacs)
