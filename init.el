;;hacking
;;author hudson joe

;;==========================================================
;;Personal configuration
;;===========================================================


;;========================
;; add path

(add-to-list 'load-path "~/.emacs.d/lisp")



;;========================




;;========================
;; require block

(require 'init-packages)







;;========================
(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

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




;;highlight current line
(global-hl-line-mode t)



;;find-function  find-variable
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)



;;defin abbreviations
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;;signature
					    ("hj" "hudsonjoe")
					    ;;
					    ))

;;======================
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)


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
