
(use-package magit
  :commands (magit-status)
  :bind (("C-x C-g" . magit-status)))

(use-package evil-magit)

(provide 'init-magit)
