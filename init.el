;; Use straight as package manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Use-package as syntax sugar for requiring packages
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Set where Customizations live
(setq custom-file (expand-file-name "config/custom.el" user-emacs-directory))
(load custom-file)

;; Set where custom inits come from
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(use-package magit
  :bind (:map magit-file-section-map
              ("C-o" . magit-diff-visit-file-other-window)
              :map magit-hunk-section-map
              ("C-o" . magit-diff-visit-file-other-window)))
(use-package haml-mode)
(use-package rspec-mode)
(use-package typescript-mode)
(use-package yaml-mode)
(use-package foreman-mode)
(use-package vue-mode)

(require 'init-multiple-cursors)
(require 'init-windmove)
(require 'init-projectile)
;; (require 'init-ivy)
(require 'init-helm)
(require 'init-org)
(require 'init-folding)
(require 'init-deadgrep)
(require 'init-inf-ruby)
(require 'init-fzf)


;; Personal Customization
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)

(server-start)
(setq ruby-insert-encoding-magic-comment nil)

;; Whitespace clean-up
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'whitespace-cleanup)
(setq-default indent-tabs-mode nil)

;; Clipboard integration
(setq-default save-interprogram-paste-before-kill t)
(setq-default yank-pop-change-selection t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Better defaults below
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; better-defaults pulled out the ones I Like
(unless (eq window-system 'ns)
  (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(when (fboundp 'horizontal-scroll-bar-mode)
  (horizontal-scroll-bar-mode -1))

;; (require 'uniquify)
;; (setq uniquify-buffer-name-style 'forward)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-/") 'hippie-expand)
(show-paren-mode 1)
(savehist-mode 1)
(savehist-mode 1)
(setq
 ;; save-interprogram-paste-before-kill t
 ;; apropos-do-all t
 ;; mouse-yank-at-point t
 ;; visible-bell t
 ;; load-prefer-newer t
 ;; ediff-window-setup-function 'ediff-setup-windows-plain)
 require-final-newline t)

(unless backup-directory-alist
  (setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                                 "backups")))))

;; Disable ugly vue mode background
(setq mmm-submode-decoration-level 0)
