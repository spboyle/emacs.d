;;; init-ivy.el

(use-package ivy)
(use-package counsel)

(ivy-mode)
(counsel-mode)

(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-M-s") 'swiper-isearch)

(provide 'init-ivy)
;;; init-ivy.el ends here
