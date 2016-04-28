;;hacking
;;author hudson joe

;;==========================================================
;;Personal configuration
;;===========================================================


;;============================================
;; add path block

(add-to-list 'load-path "~/.emacs.d/lisp")

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

;;============================================


 (setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
