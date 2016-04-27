 
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
			    popwin

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

;;load theme
(load-theme 'spacemacs-dark t)

(provide 'init-packages)
