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
(global-set-key (kbd "C-c p a") 'counsel-ag)
(global-set-key (kbd "C-c c l") 'counsel-locate)

;; org mode
(global-set-key (kbd "C-c a") 'org-agenda)

;; indent key-binding
(global-set-key (kbd "C-M-\\")  'indent-region-or-buffer)


(global-set-key (kbd "s-/") 'hippie-expand)

;;reveal-in-osx-finder
(global-set-key (kbd "C-c z") 'reveal-in-osx-finder)

;;expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;;iedit
(global-set-key (kbd "M-s e") 'iedit-mode)
(global-set-key (kbd "M-s q") 'iedit-quit)

;;company keys
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  )

(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;org capture
(global-set-key (kbd "C-c r") 'org-capture)

;;org pomodoro
(global-set-key (kbd "C-c o p") 'org-pomodoro)


;;helm ag
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)


;;auto yasnippet
(global-set-key (kbd "C-c s c") 'aya-create)
(global-set-key (kbd "C-c s e") 'aya-expand)


;;neotree
(global-set-key [f8] 'neotree-toggle)


;;window movep
(global-set-key (kbd "C-c w p") 'windmove-up)
(global-set-key (kbd "C-c w n") 'windmove-down)
(global-set-key (kbd "C-c w b") 'windmove-left)
(global-set-key (kbd "C-c w f") 'windmove-right)

;;chinese-fonts-setup
(global-set-key (kbd "C-c f i") 'cfs-increase-fontsize)
(global-set-key (kbd "C-c f d") 'cfs-decrease-fontsize)

(global-set-key (kbd "M-s i") 'counsel-imenu)

;;
(global-set-key (kbd "C-w") 'backward-kill-word)

(global-set-key (kbd "C-c '") 'shell-pop)

;;beautifier
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
;; Or if you're using 'js-mode' (a.k.a 'javascript-mode')
(eval-after-load 'js
  '(define-key js-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'web-mode
  '(define-key web-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


(global-set-key (kbd "C-c g g") 'ggtags-mode)
(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)

(global-set-key (kbd "C-c f m") 'moo-jump-local)

(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-previous-word-generic)
(provide 'init-keybindings)
