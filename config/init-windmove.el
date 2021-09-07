;;; init-windmove.el

;; (when (fboundp 'windmove-default-keybindings)
;;   (windmove-default-keybindings))
(global-set-key (kbd "H-<left>")  'windmove-left)
(global-set-key (kbd "H-<right>") 'windmove-right)
(global-set-key (kbd "H-<up>")    'windmove-up)
(global-set-key (kbd "H-<down>")  'windmove-down)

;; override org-mode bindings for multiple cursors & WindMove
(add-hook 'org-mode-hook
          '(lambda ()
             (define-key org-mode-map (kbd "H-<left>")  'windmove-left)
             (define-key org-mode-map (kbd "H-<right>") 'windmove-right)
             (define-key org-mode-map (kbd "H-<up>")    'windmove-up)
             (define-key org-mode-map (kbd "H-<down>")  'windmove-down)))

(provide 'init-windmove)
;;; init-windmove.el ends here
