;;; init-inf-ruby.el

(use-package inf-ruby)

;; inf-ruby rspec-mode integration
(add-hook 'after-init-hook 'inf-ruby-switch-setup)
(add-hook 'compilation-filter-hook 'inf-ruby-auto-enter)

(provide 'init-inf-ruby)
;;; init-inf-ruby.el ends here
