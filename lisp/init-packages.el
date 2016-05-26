 ;;;packages

(when (>= emacs-major-version 24)
  (package-initialize)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )
(require 'cl)

;;add whatever packages you want here
(defvar hudsonjoe/packages '(
			    company
			    spacemacs-theme
			    monokai-theme
			    hungry-delete
			    swiper
			    counsel
			    smartparens
			    js2-mode
			    exec-path-from-shell
			    popwin
			    reveal-in-osx-finder
			    expand-region
			    iedit
			    bison-mode
			    moe-theme
			    spaceline
			    org-pomodoro
			    popwin
			    swift-mode
			    flycheck

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


;; configure js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;;global company mode activation
(global-company-mode t)


(require 'org-pomodoro)


;;reveal-in-osx-finder
(require 'reveal-in-osx-finder)

(require 'expand-region)

;;swift mode
(require 'swift-mode)

;;(require 'spaceline-config)
;;(spaceline-spacemacs-theme)

;; moe theme settings
(require 'moe-theme)
;;(setq moe-theme-resize-markdown-title '(1.5 1.4 1.3 1.2 1.0 1.0))
(setq moe-theme-resize-org-title '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(1.5 1.4 1.3 1.2 1.1 1.0))




;;load theme
;;(load-theme 'spacemacs-dark t)
;;(moe-light)
(moe-dark)

(require 'popwin)
(popwin-mode 1)


(provide 'init-packages)
;;; init-packages.el ends here
