;;hacking
;;author hudson joe

;;==========================================================
;;Personal configuration
;;===========================================================

;;=====================
;;melpa packages
;;=====================

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
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


(tool-bar-mode -1)
(scroll-bar-mode -1)
;;==========================
;;set line number
;;==========================
(global-linum-mode 'linum-mode)

(setq-default cursor-type 'bar)

;;org mode highlight
(require 'org)
(setq org-src-fontify-natively t)

;;recent file
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;;replace selected text with new input
(delete-selection-mode t)

;;open up with full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(setq inhibit-splash-screen t)


;;不产生备份文件  
(setq make-backup-files nil)
(setq auto-save-default nil)


;;hight matching parenthesis
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;global company mode activation
(global-company-mode t)


;;highlight current line
(global-hl-line-mode t)

;;load theme
(load-theme 'spacemacs-dark t)

;;find-function  find-variable
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)


;;======================

;;hungry delete 
(require 'hungry-delete)
(global-hungry-delete-mode)


;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)



;; smartparens
(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)


;; configure js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-external-variable ((t (:foreground "gray100")))))
