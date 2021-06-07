;;; init-windmove.el

;; (when (fboundp 'windmove-default-keybindings)
;;   (windmove-default-keybindings))
(global-set-key (kbd "H-a")  'windmove-left)
(global-set-key (kbd "H-d") 'windmove-right)
(global-set-key (kbd "H-w")    'windmove-up)
(global-set-key (kbd "H-s")  'windmove-down)

;; override org-mode bindings for multiple cursors & WindMove
(add-hook 'org-mode-hook
          '(lambda ()
             (define-key org-mode-map (kbd "H-a")  'windmove-left)
             (define-key org-mode-map (kbd "H-d") 'windmove-right)
             (define-key org-mode-map (kbd "H-w")    'windmove-up)
             (define-key org-mode-map (kbd "H-s")  'windmove-down)))

(provide 'init-windmove)
;;; init-windmove.el ends here
