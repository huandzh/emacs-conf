;; PART I : BASE
;; settings for this part can be applied across sites

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") ;; using tsinghua mirror for known reason
   t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(elpy-syntax-check-command
   "/usr/local/bin/flake8")
 '(indent-tabs-mode nil)
 '(ispell-program-name "aspell")
 '(js-indent-level 2)
 '(markdown-command "/usr/local/bin/markdown")
 '(package-selected-packages
   (quote
    (json-mode sphinx-mode sphinx-doc docker-compose-mode markdown-preview-eww elpy yaml-mode eslint-fix web-mode vue-mode vue-html-mode haskell-mode dockerfile-mode easy-jekyll color-theme ess-view ess-R-data-view ess markdown-mode mmm-mode)))
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; settings for packages

;; global keys
(global-set-key [(control c) (c) ] 'comment-region)
(global-set-key [(control c) (u) ] 'uncomment-region)
(global-set-key [(control c) (k) ] 'kill-buffer)
(global-set-key (kbd "C-c SPC") 'set-mark-command)

;; python dev
(elpy-enable)


;; deal with backup files
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; remove trailing whitespace

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; PART2 : THIS SITE
;; settings for this part is only valid for this site
;; comment out if not appliable
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq easy-jekyll-basedir "~/Dev/hdblog/")
