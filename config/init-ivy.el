;;; init-ivy.el

(use-package ivy)
(use-package counsel
  :bind
  (("M-y" . counsel-yank-pop)
   :map ivy-minibuffer-map
   ("M-y" . ivy-next-line)))
(use-package counsel-projectile)
(use-package prescient)
(use-package ivy-prescient)
(use-package ivy-hydra)

(ivy-mode)
(counsel-mode)
(counsel-projectile-mode)
(ivy-prescient-mode)

(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-M-s") 'swiper-isearch)
(global-set-key (kbd "C-c H-r") 'counsel-rg)
(global-set-key (kbd "H-z") 'counsel-fzf)
(global-set-key (kbd "C-H-M r") 'counsel-projectile-rg)

;; Consume words at point when searching
(with-eval-after-load 'swiper
  (define-key swiper-map "\C-w" 'ivy-yank-word))

;; Do not add ^ anchor for search completion
(setq ivy-initial-inputs-alist nil)

;; Do not show parent and current directoires in completion
(setq ivy-extra-directories nil)

;; Swiper goes to start of match instead of end
(setq swiper-goto-start-of-match t)

;; Recursive minibuffers primarily to enable counsel-yank-pop
(setq enable-recursive-minibuffers t)

(provide 'init-ivy)
;;; init-ivy.el ends here
