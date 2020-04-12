
(use-package org
  :commands (org-mode org-agenda org-store-link org-capture)
  :bind (("C-c a" . org-agenda)
         ("C-c l" . org-store-link)
         ("C-c c" . org-capture))
  :init
  (setq org-startup-with-inline-images t)
  (setq org-src-window-setup 'other-frame)
  (setq org-src-preserve-indentation t)
  :config
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((python . t)))
  (add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images))

(use-package deft
  :commands deft
  :bind (("C-c C-8" . deft)
         ("<f8>" . deft))
  :init (setq deft-directory "/Users/qta/org/deft/"
              deft-archive-directory "/Users/qta/org/deft.archive/"
              deft-text-mode 'org-mode
              deft-extensions '("org" "txt" "text" "md" "markdown" "tex")
              deft-default-extension "org"
              deft-recursive t
              deft-org-mode-title-prefix t))

(provide 'init-org)
