;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(add-to-list 'default-frame-alist '(font . "Inconsolata Nerd Font Mono-16"))

(setq rust-format-on-save t)

(global-set-key (kbd "C-c c") 'flymake-proc-compile)
(global-set-key (kbd "C-c f") 'projectile-ripgrep)

(use-package forge :after magit)

(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

(add-to-list 'custom-theme-load-path "~/.doom.d/themes/")

;; (load-theme 'doom-vibrant t)
(load-theme 'doom-solarized-dark t)
;; (set-face-background 'default "unspecified-bg")

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (all-the-icons must be installed!)
(doom-themes-neotree-config)
;; or for treemacs users
(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)
