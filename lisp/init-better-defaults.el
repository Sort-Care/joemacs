;;
;; Better defaults
;;


;; forbid the ring bell
(setq ring-bell-function 'ignore)


;;==========================
;;set line number
;;==========================
(global-linum-mode 'linum-mode)


;; turn on auto revert 
(global-auto-revert-mode 1)



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

(defadvice show-paren-function (around fix-show-paren-function activate)
  (cond ((looking-at-p "\\s(") ad-do-it)
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     ad-do-it)))
  )


;;hight matching parenthesis
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;;replace selected text with new input
(delete-selection-mode t)


;;缩进
(defun indent-buffer ()
  "Indent the current visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer"
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region.")
	  )
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))

;; hippie expand settings
(setq hippie-expand-try-functions-list '(
					 try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))



;;===============================================
;;Dired mode settings
;;===============================================

;; set recursive deletes and copies
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; set only one buffer for dired mode
(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
;;(require 'dired)
;;(defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;;延迟Dired load
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))


;; this setting allows you to use keybindings: C-x C-j to enter the path of current file folder
(require 'dired-x)

;; this setting allows you to copy the contents to the other window when more than two
;; windows are available in a frame.
(setq dired-dwin-target t)

;; using y / n instead of yes / no
(fset 'yes-or-no-p 'y-or-n-p)

;; recursive delete and copy
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)


;;
(put 'dired-find-alternate-file 'disabled nil)

;; set encoding
(set-language-environment "UTF-8")

;; URL
(defun hudsonjoe/insert-chrome-current-tab-url()
  "Get the URL of the active tab of the first window"
  (interactive)
  (insert (hudsonjoe/retrieve-chrome-current-tab-url))
  )
(defun hudsonjoe/retrieve-chrome-current-tab-url()
  "Get the URL of the active tab of the first window"
  (interactive)
  (let ((result (do-applescript
		 (concat
		  "set frontmostApplication to path to frontmost application\n"
		  "tell application \"Google Chrome\"\n"
		  " set theUrl to get URL of active tab of first window\n"
		  " set theResult to (get theUrl) \n"
		  "end tell\n"
		  "activate application (frontmostApplication as text)\n"
		  "set links to {}\n"
		  "copy theResult to the end of links\n"
		  "return links as string\n"))))
    (format "%s" (s-chop-suffix "\"" (s-chop-prefix "\"" result)))))


;; move line or region
(require 'move-lines)
(move-lines-binding)

(set-default-font "Menlo-14")

(setq display-buffer-alist '(("\\*undo-tree\\*" display-buffer-below-selected)))

(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))

(defun my-web-mode-indent-setup ()
  (setq web-mode-markup-indent-offset 2) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset 2)    ; web-mode, css in html file
  (setq web-mode-code-indent-offset 2)   ; web-mode, js code in html file
  )
(add-hook 'web-mode-hook 'my-web-mode-indent-setup)

(defun my-toggle-web-indent ()
  (interactive)
  ;; web development
  (if (or (eq major-mode 'js-mode) (eq major-mode 'js2-mode))
      (progn
	(setq js-indent-level (if (= js-indent-level 2) 4 2))
	(setq js2-basic-offset (if (= js2-basic-offset 2) 4 2))))

  (if (eq major-mode 'web-mode)
      (progn (setq web-mode-markup-indent-offset (if (= web-mode-markup-indent-offset 2) 4 2))
	     (setq web-mode-css-indent-offset (if (= web-mode-css-indent-offset 2) 4 2))
	     (setq web-mode-code-indent-offset (if (= web-mode-code-indent-offset 2) 4 2))))
  (if (eq major-mode 'css-mode)
      (setq css-indent-offset (if (= css-indent-offset 2) 4 2)))

  (setq indent-tabs-mode nil))

(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

(add-to-list 'auto-mode-alist '("\\.md$" . jekyll-markdown-mode))
(add-to-list 'auto-mode-alist '("\\.html" . jekyll-html-mode))

;;latex
(setq-default TeX-engine 'xetex)

;;set latex toggle image size
(plist-put org-format-latex-options :scale 2)

(setq inferior-lisp-program (executable-find "clisp"))


;; scroll one line at a time (less "jumpy" than defaults)
    
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time

(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

(setq scroll-step 2) ;; keyboard scroll one line at a time

(provide 'init-better-defaults)
