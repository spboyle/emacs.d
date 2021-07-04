;;; init-helm.el

(use-package helm)
(use-package helm-projectile)
(helm-projectile-on)

(helm-mode 1)
(setq completion-styles '(flex))
(global-set-key (kbd "M-x") 'helm-M-x)

(provide 'init-helm)
;;; init-helm.el ends here
