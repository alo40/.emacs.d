;; My EMACS config

;; don't show the splash screen
(setq inhibit-startup-message t)

;; ;; flahses when activated (only for testing)
;; (setq visible-bell t)

;; some configurations
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; display line numbers
(global-display-line-numbers-mode 1)

;; load color theme
;; (load-theme 'deeper-blue nil)
 (load-theme 'misterioso nil)

;; Disable line numbers for some modes
(add-hook 'eshell-mode-hook 'display-line-numbers-mode -1) ; eshell
