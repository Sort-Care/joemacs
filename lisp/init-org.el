;;
;; org mode default settings
;;
(with-eval-after-load 'org
  (setq org-src-fontify-natively t)

;;  (setq org-agenda-files '("~/org"))

  (defun org-summary-todo (n-done n-not-done)
    "Switch entry to DONE when all subentries are done, to TODO otherwise."
    (let (org-log-done org-log-states)   ; turn off logging
      (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
  
  (add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;;  (setq org-capture-templates
;;      '(("t" "Todo" entry (file+headline "~/org/routine.org" "May")
;;	 "* TODO [#B] %?\n  %i\n"
;;	 :empty-lines 1)))

  (setq org-export-with-sub-superscripts (quote {})) 
  )
;;the code following is not working for Chinese
(defun org-mode-my-init()
  (set-face-attribute 'org-level-1 nil :height 1.6)
  (set-face-attribute 'org-level-2 nil :height 1.4)
  (set-face-attribute 'org-level-3 nil :height 1.2)
  (define-key org-mode-map (kbd "＊")(kbd "*"))
  (define-key org-mode-map (kbd "－")(kbd "-"))
  (define-key org-mode-map (kbd "（")(kbd "("))
  (define-key org-mode-map (kbd "）")(kbd ")"))
  (define-key org-mode-map (kbd "＋")(kbd "+"))
  (define-key org-mode-map (kbd "｜")(kbd "|"))
  (define-key org-mode-map (kbd "：")(kbd ":"))
  )

(add-hook 'org-mode-hook 'org-mode-my-init)

(provide 'init-org)
