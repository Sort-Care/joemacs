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

(provide 'init-ui)
