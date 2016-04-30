
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(org-default-priority 66)
 '(org-todo-keyword-faces
   (quote
    (("DONE" . "99ff66")
     ("REPORT" . "#EEE685")
     ("BUG" . "#FF4040")
     ("KNOWNCAUSE" . "#B2DFEE")
     ("FIXED" . "#DDA0DD")
     ("CANCELED" . "#548B54")
     ("TODO" . "#FF34B3")
     ("W_FEEDBACK" . "#00F5FF"))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "|" "DONE(d!)")
     (sequence "REPORT(r!)" "BUG(b@/!)" "KNOWNCAUSE(k!)" "W_FEEDBACK(!)" "|" "FIXED(f@/!)")
     (sequence "|" "CANCELED(c!)"))))
 '(spacemacs-theme-org-highlight nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-external-variable ((t (:foreground "gray100")))))
