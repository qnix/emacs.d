(require 'pyvenv)
(pyvenv-activate "/Users/qta/ws/py3.env")

(require 'elpy)
(elpy-enable)

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; ;; C-c C-c	: elpy-shell-send-region-or-buffer
;; ;; C-c C-d	: show the documentation of function/class at point
;; ;; M-.		: go to definition

(define-key elpy-mode-map (kbd "C-c C-.") 'elpy-goto-definition)

(provide 'init-python)
