;; init.el --- Emacs configuration

;; See https://emacs.stackexchange.com/questions/5828/why-do-i-have-to-add-each-package-to-load-path-or-problem-with-require-packag
;; Manually load package instead of waiting until after init.el is loaded
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

;;(package-refresh-contents)
(package-install 'use-package)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    elpy
    ein
    py-autopep8
    doom-themes
    magit
    auto-complete
    markdown-mode))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; --------------------------------------
;; BASIC CUSTOMIZATION
;; --------------------------------------
;;(setq inhibit-startup-message t) ;; Hide the startup message
(load-theme 'doom-spacegrey t) ;; Load custom theme
(global-linum-mode t) ;; Enable line numbers globally
(global-hl-line-mode +1) ;; Highlight current line
(toggle-frame-maximized) ;; Maximize emacs on startup

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

;; Interactively Do Things
(require 'ido)
(ido-mode t)

;; Auto Complete
(ac-config-default)
(global-auto-complete-mode t)

;; Markdown mode -- use pandoc with custom css file
(setq markdown-command "pandoc --css ~/.emacs.d/emacs-pandoc.css")


;; --------------------------------------
;; PYTHON CONFIGURATION
;; --------------------------------------
(elpy-enable)
(require 'py-autopep8)
(setq elpy-rpc-python-command "/home/ninad/anaconda3/bin/python")

;; Use ipython shell
(setq python-shell-interpreter "/home/ninad/anaconda3/bin/ipython"
      python-shell-interpreter-args "-i --simple-prompt")


;; --------------------------------------
;; CUSTOM SETTINGS by EMACS
;; DO NOT EDIT BY HAND!
;; --------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#0d0f11" "#DF8C8C" "#A8CE93" "#DADA93" "#83AFE5" "#c9b4cf" "#7FC1CA" "#e6eef3"])
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "53d1bb57dadafbdebb5fbd1a57c2d53d2b4db617f3e0e05849e78a4f78df3a1b" "77c3f5f5acaa5a276ca709ff82cce9b303f49d383415f740ba8bcc76570718b9" "0846e3b976425f142137352e87dd6ac1c0a1980bb70f81bfcf4a54177f1ab495" "a866134130e4393c0cad0b4f1a5b0dd580584d9cf921617eee3fd54b6f09ac37" "2a1b4531f353ec68f2afd51b396375ac2547c078d035f51242ba907ad8ca19da" "7666b079fc1493b74c1f0c5e6857f3cf0389696f2d9b8791c892c696ab4a9b64" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "b5ecb5523d1a1e119dfed036e7921b4ba00ef95ac408b51d0cd1ca74870aeb14" default)))
 '(fci-rule-color "#556873")
 '(jdee-db-active-breakpoint-face-colors (cons "#0d0f11" "#7FC1CA"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#0d0f11" "#A8CE93"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#0d0f11" "#899BA6"))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#0d0f11")
 '(vc-annotate-color-map
   (list
    (cons 20 "#A8CE93")
    (cons 40 "#b8d293")
    (cons 60 "#c9d693")
    (cons 80 "#DADA93")
    (cons 100 "#e2d291")
    (cons 120 "#eaca90")
    (cons 140 "#F2C38F")
    (cons 160 "#e4bea4")
    (cons 180 "#d6b9b9")
    (cons 200 "#c9b4cf")
    (cons 220 "#d0a6b8")
    (cons 240 "#d799a2")
    (cons 260 "#DF8C8C")
    (cons 280 "#c98f92")
    (cons 300 "#b39399")
    (cons 320 "#9e979f")
    (cons 340 "#556873")
    (cons 360 "#556873")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 109 :width normal)))))
