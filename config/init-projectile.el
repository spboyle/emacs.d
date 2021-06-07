;;; init-projectile.el

(use-package projectile)

(define-key projectile-mode-map (kbd "H-o") 'projectile-command-map)
(global-set-key (kbd "H-x") 'projectile-run-async-shell-command-in-root)
(projectile-mode +1)

(provide 'init-projectile)
;;; init-projectile.el ends here
