; this is not needed when use evil-mode, it already defines the same bindings
(eval-after-load "dired"
  '(progn
     (setq dired-use-ls-dired nil)
     (define-key dired-mode-map "j" 'dired-next-line)
     (define-key dired-mode-map "k" 'dired-previous-line)))

(eval-after-load "viper"
  '(progn
     (setq viper-want-ctl-h-help t)))

(setq viper-mode t)
(require 'viper)

(provide 'init-viper)
