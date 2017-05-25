;;
;; UI CONFIGURATION
;;

;;set tool bar nil
(tool-bar-mode -1)

;;set scroll bar nil
(scroll-bar-mode -1)

;;modify the cursor
(setq-default cursor-type 'bar)

;; cancel welcome page
(setq inhibit-splash-screen t)


;;open up with full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))


;;highlight current line
(global-hl-line-mode t)

;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
 ;;(set-frame-parameter (selected-frame) 'alpha <both>)
(set-frame-parameter (selected-frame) 'alpha '(90 . 40))
(add-to-list 'default-frame-alist '(alpha . (90 . 40)))

 (defun toggle-transparency ()
   (interactive)
   (let ((alpha (frame-parameter nil 'alpha)))
     (set-frame-parameter
      nil 'alpha
      (if (eql (cond ((numberp alpha) alpha)
                     ((numberp (cdr alpha)) (cdr alpha))
                     ;; Also handle undocumented (<active> <inactive>) form.
                     ((numberp (cadr alpha)) (cadr alpha)))
               100)
          '(85 . 50) '(100 . 100)))))
 (global-set-key (kbd "C-c C-c C-t") 'toggle-transparency)

(provide 'init-ui)
