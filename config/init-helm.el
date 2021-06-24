;;; init-helm.el

(use-package helm)
(use-package helm-projectile)
(helm-projectile-on)

(helm-mode 1)
(setq completion-styles '(flex))

(provide 'init-helm)
;;; init-helm.el ends here
