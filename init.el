;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AUTO-ADDED (don't change)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; This part needs to be at the very beginning to avoid a ""

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e1f4f0158cd5a01a9d96f1f7cdcca8d6724d7d33267623cc433fe1c196848554" "512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4" "70b596389eac21ab7f6f7eb1cf60f8e60ad7c34ead1f0244a577b1810e87e58c" "dc8285f7f4d86c0aebf1ea4b448842a6868553eded6f71d1de52f3dcbc960039" "2853dd90f0d49439ebd582a8cbb82b9b3c2a02593483341b257f88add195ad76" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "a44e2d1636a0114c5e407a748841f6723ed442dc3a0ed086542dc71b92a87aee" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" default))
 '(ispell-dictionary nil)
 '(package-selected-packages '(pdf-tools rust-mode doom-themes vterm ## cmake-mode)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PDF VIEWER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (use-package pdf-tools
;;   :ensure t
;;   :config
;;   (pdf-tools-install))  ;; Installs the required server (epdfinfo)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERAL CONFIG
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; don't show the splash screen
(setq inhibit-startup-message t)

;; some configurations
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; ;; display line numbers
(global-display-line-numbers-mode 1)
;;
(add-hook 'python-mode-hook 'display-line-numbers-mode)

;; load color theme
;; (load-theme 'deeper-blue nil)
(load-theme 'doom-dracula nil)  ;; looks good in emacs
;; (load-theme 'doom-dark+ nil)  ;; looks good in terminal

;; ;; font size
(set-face-attribute 'default nil :height 150)

;; full-screen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; pdf-tools activation (use one time only)
(pdf-tools-install)

;; pdf-tools config
(add-hook 'pdf-view-mode-hook #'(lambda () (interactive) (display-line-numbers-mode -1)))

;; ;; MELPA (not working) -> install packages using: M-x package-list-packages
;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; ;; and `package-pinned-packages`. Most users will not need or want to do this.
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t) 
;; (package-initialize)

;; ;; PYTHON (not working)
;; (use-package python-mode
;; 	     :ensure t
;; 	     :custom
;; 	     (python-shell-interpreter "python3"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; -*- mode: elisp -*-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

;; ;; NOT WORKING 
;; ;; Source: https://www.emacswiki.org/emacs/misc-cmds.el
;; (defun revert-buffer-no-confirm ()
;;     "Revert buffer without confirmation."
;;     (interactive)
;;     (revert-buffer :ignore-auto :noconfirm))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; LaTeX
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Table caption place below
(setq org-latex-caption-above nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MELPA RUST CONFIG (not necessary to re-run)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (require 'package)
;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/") t)
;; (package-initialize)
;; (package-refresh-contents)

(require 'rust-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; NOT USED
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ;; flahses when activated (only for testing)
;; (setq visible-bell t)

;; ;; Disable line numbers for some modes
;; (add-hook 'eshell-mode-hook (lambda () (display-line-numbers-mode 0))) ; eshell
;; (add-hook 'inferior-python-mode-hook (lambda () (display-line-numbers-mode 0))) ; run-python

;; ;; use vterm
;; (setup (:pkg vterm)
;;   (:when-loaded
;;    (progn
;;      (setq vterm-max-scrollback 10000)
;;      (advice-add 'evil-collection-vterm-insert :before #'vterm-reset-cursor-point))))

;; ;; install vterm from MELPA
;; (use-package vterm
;;     :ensure t)

;; doom-themes
;; (setq doom-theme 'doom-city-lights)
;; (setq doom-theme 'doom-dracula)

;; (use-package doom-themes
;;   :ensure t
;;   :config
;;   ;; Global settings (defaults)
;;   (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;;         doom-themes-enable-italic t) ; if nil, italics is universally disabled
;;   (load-theme 'doom-one t)

;;   ;; Enable flashing mode-line on errors
;;   (doom-themes-visual-bell-config)
;;   ;; Enable custom neotree theme (all-the-icons must be installed!)
;;   (doom-themes-neotree-config)
;;   ;; or for treemacs users
;;   (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
;;   (doom-themes-treemacs-config)
;;   ;; Corrects (and improves) org-mode's native fontification.
;;   (doom-themes-org-config))


