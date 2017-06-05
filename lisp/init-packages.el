 ;;;packages

(when (>= emacs-major-version 24)
  (package-initialize)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )
(require 'cl)

;;add whatever packages you want here
(defvar hudsonjoe/packages '(
							 ;;---------------- Packages for special file modes ----------
							 js2-mode
							 bison-mode
							 web-mode
							 
							 
							 ;;----------- Packages providing awesome functionalities ---------- 
							 company
							 swiper
							 counsel
							 popwin
							 reveal-in-osx-finder
							 org-pomodoro
							 helm-ag
							 yasnippet
							 auto-yasnippet
							 neotree
							 exec-path-from-shell
							 which-key
							 auctex
							 company-auctex
							 chinese-fonts-setup
							 ag
							 helm
							 helm-swoop
							 helm-gtags
							 ggtags
							 
							 ;;---------------- Packages for edit convenience ---------- 
							 hungry-delete
							 smartparens
							 expand-region
							 iedit
							 
							 
							 ;;-------------------------- themes ---------- 
							 monokai-theme
							 moe-theme    

							 ) "Default packages")

(setq package-selected-packages hudsonjoe/packages)

(defun hudsonjoe/packages-installed-p ()
  (loop for pkg in hudsonjoe/packages
		when (not (package-installed-p pkg)) do (return nil)
		finally (return t)))

(unless (hudsonjoe/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg hudsonjoe/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg)))
  )



(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))




;;hungry delete 
(require 'hungry-delete)
(global-hungry-delete-mode)


;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)



;;popwin activation
(require 'popwin)
(popwin-mode t)


;; smartparens
(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)


;; configure js2-mode, html-mode for files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))

;;global company mode activation
(global-company-mode t)


(require 'org-pomodoro)


;;reveal-in-osx-finder
(require 'reveal-in-osx-finder)

(require 'expand-region)



;;flycheck
;;(global-flycheck-mode)


;;(require 'spaceline-config)
;;(spaceline-spacemacs-theme)

;; moe theme settings
(require 'moe-theme)
;;(setq moe-theme-resize-markdown-title '(1.5 1.4 1.3 1.2 1.0 1.0))
(setq moe-theme-resize-org-title '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(1.5 1.4 1.3 1.2 1.1 1.0))

(require 'powerline)
(powerline-moe-theme)

;;yasnippet
(require 'yasnippet) 
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)


;;neotree
(require 'neotree)

;;which key
(which-key-mode 1)

;;company-auctex
(require 'company-auctex)
(company-auctex-init)


;;chinese-fonts-setup
(require 'chinese-fonts-setup)

;;ag
(require 'ag)

;;load theme
;;(load-theme 'spacemacs-dark t)
;;(moe-light)
(moe-dark)
(moe-theme-set-color 'purple)

(require 'popwin)
(popwin-mode 1)

;;window numbering
(window-numbering-mode 1)

(require 'undo-tree)
(global-undo-tree-mode)


;;
(require 'shell-pop)

;;speedbar
;;(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
(setq speedbar-directory-unshown-regexp "^$")


;;jekyll mode
(add-to-list 'auto-mode-alist '("\\.md$" . jekyll-markdown-mode))
(add-to-list 'auto-mode-alist '("\\.html" . jekyll-html-mode))

(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode

(progn (require 'artist)
       (artist-figlet-get-font-list))

;; org-jekyll
(require 'org-jekyll)

(provide 'init-packages)
;;; init-packages.el ends here
