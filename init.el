;; My EMACS config

;; don't show the splash screen
(setq inhibit-startup-message t)

;; ;; flahses when activated (only for testing)
;; (setq visible-bell t)

;; some configurations
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; ;; display line numbers
;; (global-display-line-numbers-mode 1)

;; load color theme
;; (load-theme 'deeper-blue nil)
 (load-theme 'misterioso nil)

;; ;; Disable line numbers for some modes
;; (add-hook 'eshell-mode-hook (lambda () (display-line-numbers-mode 0))) ; eshell
;; (add-hook 'inferior-python-mode-hook (lambda () (display-line-numbers-mode 0))) ; run-python

;; ;; use python-mode with the right version (not used, already default)
;; (use-package python-mode
;; 	     :ensure nil
;; 	     :custom
;; 	     (python-shell-interpreter "python3"))

;; ;; use vterm
;; (setup (:pkg vterm)
;;   (:when-loaded
;;    (progn
;;      (setq vterm-max-scrollback 10000)
;;      (advice-add 'evil-collection-vterm-insert :before #'vterm-reset-cursor-point))))

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; ;; install vterm from MELPA
;; (use-package vterm
;;     :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(vterm ## cmake-mode)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

