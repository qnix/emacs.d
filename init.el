
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "/Users/qta/.emacs.d/lisp")

(global-unset-key (kbd "C-x C-u"))      ; unbind 'update-region

(global-set-key (kbd "C-;")     'comment-or-uncomment-region)
(global-set-key (kbd "M-/")     'hippie-expand)
(global-set-key (kbd "C-+")     'text-scale-increase)
(global-set-key (kbd "C--")     'text-scale-decrease)
(global-set-key (kbd "C-x m")   'execute-extended-command)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)

(global-set-key (kbd "C-x C-k r")
                #'(lambda ()
                    (interactive)
                    (byte-recompile-directory user-emacs-directory 0 1)
                    (load-file user-init-file)))

(require 'init-emacs)

(require 'init-python)

(require 'init-org)

(require 'init-magit)

(require 'evil)
(evil-mode 1)
(use-package undo-tree
  :diminish undo-tree-mode:
  :config
  (global-undo-tree-mode 1))

(use-package avy
  :bind (("C-c [" . avy-goto-char)
         ("C-c ]" . avy-goto-line))
  :config
  (avy-setup-default)
  (global-set-key (kbd "C-c C-j") 'avy-resume))

(use-package ace-window
  :bind ("M-o" . ace-window)
  :config
  ;; they key order favor the right hand fingers
  (setq aw-keys '(?h ?j ?k ?l ?i ?o ?a ?s ?d ?f ?g)))

(use-package yasnippet
  :init
  (add-to-list 'yas-snippet-dirs (expand-file-name "~/snippets"))
  (yas-global-mode 1))

(use-package ess
  :init (require 'ess-site))

(require 'init-stockfish)

(require 'init-clojure)

(use-package smartparens
  :diminish smartparens-mode
  :config
  (add-hook 'prog-mode-hook 'smartparens-mode))

(use-package aggressive-indent)

(add-hook 'prog-mode-hook 'electric-pair-mode)

(use-package smart-dash
  :config
  (add-hook 'python-mode-hook 'smart-dash-mode))



(use-package google-this
  :config
  (google-this-mode 1))


