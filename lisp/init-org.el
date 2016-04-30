;;
;; org mode default settings
;;


(require 'org)
(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/org"))

 (defun org-summary-todo (n-done n-not-done)
      "Switch entry to DONE when all subentries are done, to TODO otherwise."
      (let (org-log-done org-log-states)   ; turn off logging
        (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
    
    (add-hook 'org-after-todo-statistics-hook 'org-summary-todo)


(provide 'init-org)
