;;; init-folding.el

(use-package origami)

(define-key origami-mode-map (kbd "H-f") 'origami-recursively-toggle-node)
(define-key origami-mode-map (kbd "C-c H-f") 'origami-toggle-all-nodes)

(global-origami-mode)
(provide 'init-folding)
;;; init-folding.el ends here
