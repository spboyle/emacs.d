;;; init-multiple-cursors.el

(use-package multiple-cursors)

(global-set-key (kbd "C-H-y") 'mc/edit-lines)
(global-set-key (kbd "H-n") 'mc/mark-next-like-this)
(global-set-key (kbd "H-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "H-M-y") 'mc/mark-all-like-this)

(add-hook 'org-mode-hook
          '(lambda ()
             (define-key org-mode-map (kbd "H-n") 'mc/mark-next-like-this)
             (define-key org-mode-map (kbd "H-p") 'mc/mark-previous-like-this)
             (define-key org-mode-map (kbd "H-M-y") 'mc/mark-all-like-this)))

;; TODO: SEAN: How to make <return> / RET just put in newlines
(add-hook 'multiple-cursors-mode
          '(lambda()
             (global-set-key (kbd "RET") 'newline)))

(provide 'init-multiple-cursors)
;;; init-multiple-cursors.el ends here
