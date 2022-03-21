;;; init-web-mode.el
(use-package web-mode
  :straight t)

(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(provide 'init-web-mode)
;;; init-web-mode.el ends here
