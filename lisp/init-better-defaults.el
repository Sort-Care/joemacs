;;
;; Better defaults
;;


;; forbid the ring bell
(setq ring-bell-function 'ignore)


;;==========================
;;set line number
;;==========================
(global-linum-mode 'linum-mode)


;; turn off auto revert 
(global-auto-revert-mode t)



;;defin abbreviations
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;;signature
					    ("hj" "hudsonjoe")
					    ;;
					    ))


;;不产生备份文件  
(setq make-backup-files nil)
(setq auto-save-default nil)


;; recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)

;;hight matching parenthesis
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;;replace selected text with new input
(delete-selection-mode t)


(provide 'init-better-defaults)
