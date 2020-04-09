
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "/Users/qta/.emacs.d/lisp")

(defvar qnix/frame-alist '((font . "Monaco-15")
                           (top . 2) (left . 2)
                           (width . 94) (height . 44)))

(setq initial-frame-alist qnix/frame-alist)
(setq default-frame-alist qnix/frame-alist)

(global-set-key (kbd "RET")     'newline-and-indent)
(global-set-key (kbd "C-;")     'comment-or-uncomment-region)
(global-set-key (kbd "M-/")     'hippie-expand)
(global-set-key (kbd "C-+")     'text-scale-increase)
(global-set-key (kbd "C--")     'text-scale-decrease)
(global-set-key (kbd "C-c C-k") 'compile)
(global-set-key (kbd "C-x C-j") 'kill-this-buffer)

(require 'init-emacs)

(require 'init-python)

(require 'evil)
(evil-mode 1)

(require 'init-org)

(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "/Users/qta/snippets")
(yas-global-mode 1)

(require 'init-magit)
