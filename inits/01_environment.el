;;; Code:
;; use system environment variables in Emacs
(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))
(electric-pair-mode t)
(electric-layout-mode t)
(electric-indent-mode t)
;;; 01_environment.el ends here
