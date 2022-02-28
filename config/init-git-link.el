;;; init-git-link.el

(use-package git-link
  :straight t)

(setq-default git-link-use-commit t)

(global-set-key (kbd "C-c C-g") 'git-link)
(provide 'init-git-link)
;;; init-git-link.el ends here
