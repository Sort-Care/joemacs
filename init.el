;;hacking
;;author hudson joe

;;==========================================================
;;Personal configuration
;;===========================================================
;;============================================
;; add path block

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/elpa/moe-theme")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/moe-theme")

;;============================================
;;============================================
;; require block
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)

;;recent file
(require 'recentf)
(require 'init-cindent)
(require 'recentf)
(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-ggtags)
(require 'sr-speedbar)
;;============================================


;;load-file and load


(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)
