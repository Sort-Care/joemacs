;;; package  --- Summary
;;; Commentary:
;;; exclusive settings, depending on file systems

;;; Code:
(defun open-nutstore-file()
  (interactive)
  (find-file "~/Nutstore")
  )

(global-set-key (kbd "<f4>") 'open-nutstore-file)


;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f1>") 'open-init-file)

;;
(defun open-schedule-file()
  (interactive)
  (find-file "~/org/schedule.org")
  )
(global-set-key (kbd "<f2>") 'open-schedule-file)

(defun open-home-path()
  (interactive)
  (find-file "~/")
  )
(global-set-key (kbd "<f3>") 'open-home-path)

;;
(require 'cc-mode)

(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)

(setq org-ditaa-jar-path "~/.emacs.d/lisp/script/ditaa.jar")

 (setq org-plantuml-jar-path
      (expand-file-name "~/.emacs.d/lisp/script/plantuml.jar"))

(provide 'init-exclusive)

;;; init-exclusive.el ends here
