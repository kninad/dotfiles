;;; init.el -- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives '("elpa" . "http://elpa.gnu.org/packages/") t)
  ;;(package-refresh-contents)  
)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    solarized-theme
    company
    anaconda-mode
    company-jedi
    flycheck
))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;;;----------------------------------------
;;; BASIC SETTINGS 
(setq inhibit-startup-message t) ;; hide the startup message
(global-linum-mode t) ;; enable line numbers globally
(tool-bar-mode -1)
(load-theme 'solarized-light t)
(display-time-mode 1)
(global-hl-line-mode +1)
(blink-cursor-mode 0)

(setq column-number-mode t)
(setq indent-tabs-mode nil)
(setq make-backup-files nil)

(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load "company"
 '(add-to-list 'company-backends '(company-jedi )))

;;;------------------------------------
;;; PYTHON SPECIFIC
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'jedi:setup)
;;; linting
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Use IPython interpreter
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt --pprint")

(add-hook 'python-mode-hook
    (lambda ()
       (setq indent-tabs-mode nil)
       (setq tab-width 4)))



;;----------------------------------------
;;; ORG MODE
;;; html/css exports
(defun my-org-inline-css-hook (exporter)
  "Insert custom inline css"
  (when (eq exporter 'html)
    (let* ((dir (ignore-errors (file-name-directory (buffer-file-name))))
           (path (concat dir "style.css"))
           (homestyle (or (null dir) (null (file-exists-p path))))
           (final (if homestyle "~/.emacs.d/org-css/worg.css" path)))
      (setq org-html-head-include-default-style nil)
      (setq org-html-head (concat
                           "<style type=\"text/css\">\n"
                           "<!--/*--><![CDATA[/*><!--*/\n"
                           (with-temp-buffer
                             (insert-file-contents final)
                             (buffer-string))
                           "/*]]>*/-->\n"
                           "</style>\n")))))

(add-hook 'org-export-before-processing-hook 'my-org-inline-css-hook)

;;;--------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-ansible company-jedi company company-anaconda flycheck flymake-python-pyflakes elpy pdf-tools solarized-theme better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
