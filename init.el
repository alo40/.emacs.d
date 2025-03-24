;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AUTO-ADDED (don't change)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; This part needs to be at the very beginning to avoid a ""

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    '("8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" default))
;;  '(ispell-dictionary nil)
;;  '(package-selected-packages '(doom-themes gnu-elpa-keyring-update cmake-mode)))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

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

;; display line numbers
(global-display-line-numbers-mode 1)
;;
(add-hook 'python-mode-hook 'display-line-numbers-mode)

;; load color theme (use t to avoid initial prompt "trust this theme?")
;; (load-theme 'deeper-blue nil)
(load-theme 'doom-dracula t)  ;; looks good in emacs
;; (load-theme 'doom-dark+ nil)  ;; looks good in terminal

;; ;; font size
(set-face-attribute 'default nil :height 150)

;; full-screen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; ;; pdf-tools activation (use one time only)
;; (pdf-tools-install)

;; ;; pdf-tools config
;; (add-hook 'pdf-view-mode-hook #'(lambda () (interactive) (display-line-numbers-mode -1)))

;; ;; PYTHON (not working)
;; (use-package python-mode
;; 	     :ensure t
;; 	     :custom
;; 	     (python-shell-interpreter "python3"))

;; MELPA
;; how to after fresh installation: 
;; 1.  Set package-check-signature to nil, e.g., M-: (setq package-check-signature nil) RET.
;; 2.  Download the package gnu-elpa-keyring-update and run the function with the same name, e.g., M-x package-install RET gnu-elpa-keyring-update RET.
;; 3.  Reset package-check-signature to the default value allow-unsigned, e.g., M-: (setq package-check-signature 'allow-unsigned) RET.

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")))

(package-initialize)

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

;; (require 'rust-mode)


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




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
