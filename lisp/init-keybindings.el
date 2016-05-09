;;
;; key bindings settings
;;

;; open recent files
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;find-function  find-variable
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


;;======================
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; git keys
(global-set-key (kbd "C-c p f") 'counsel-git)

;; org mode
(global-set-key (kbd "C-c a") 'org-agenda)

;; indent key-binding
(global-set-key (kbd "C-M-\\")  'indent-region-or-buffer)


(global-set-key (kbd "s-/") 'hippie-expand)


(global-set-key (kbd "C-c z") 'reveal-in-osx-finder)

;;expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;;iedit
(global-set-key (kbd "M-s e") 'iedit-mode)

;;company keys
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  )

(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'init-keybindings)
