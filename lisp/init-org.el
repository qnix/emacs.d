;(require 'org)
;
;(global-set-key (kbd "C-c l") 'org-store-link)
;(global-set-key (kbd "C-c a") 'org-agenda)
;(global-set-key (kbd "C-c c") 'org-capture)

(use-package org
  :commands (org-mode org-agenda org-store-link org-capture)
  :bind (("C-c a" . org-agenda)
         ("C-c l" . org-store-link)
         ("C-c c" . org-capture)))

(use-package deft
  :commands deft
  :bind ("C-c C-8" . deft)
  :init (setq deft-directory "/Users/qta/org/deft/"
              deft-archive-directory "/Users/qta/org/deft/archive/"
              deft-text-mode 'org-mode
              deft-extensions '("org")
              deft-recursive t
              deft-org-mode-title-prefix t))

(provide 'init-org)
