
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(cfs--current-profile "profile1" t)
 '(cfs--profiles-steps (quote (("profile1" . 5))) t)
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
	("6dd2b995238b4943431af56c5c9c0c825258c2de87b6c936ee88d6bb1e577cb9" "c620ce43a0b430dcc1b06850e0a84df4ae5141d698d71e17de85e7494377fd81" "e297f54d0dc0575a9271bb0b64dad2c05cff50b510a518f5144925f627bb5832" "d3a406c5905923546d8a3ad0164a266deaf451856eca5f21b36594ffcb08413a" "a19265ef7ecc16ac4579abb1635fd4e3e1185dcacbc01b7a43cf7ad107c27ced" "b9a06c75084a7744b8a38cb48bc987de10d68f0317697ccbd894b2d0aca06d2b" "b0f529f09b32b18ce9192d4fd1379266c1e143999ef5b326a13b7c8bbe0f6a5d" "8dc4a35c94398efd7efee3da06a82569f660af8790285cd211be006324a4c19a" "9541f1dc11258239ef02aa1a5e9db3e1e46bc8fb1d7dbe83946c1541ae6dbdf9" default)))
 '(fci-rule-color "#eee8d5")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
	(solarized-color-blend it "#fdf6e3" 0.25)
	(quote
	 ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
	(("#eee8d5" . 0)
	 ("#B4C342" . 20)
	 ("#69CABF" . 30)
	 ("#69B7F0" . 50)
	 ("#DEB542" . 60)
	 ("#F2804F" . 70)
	 ("#F771AC" . 85)
	 ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
	("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
	("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
	("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files
   (quote
	("/Volumes/OrgFolder/todo.org" "~/Documents/UMass/New Graduate.org")))
 '(org-default-priority 66)
 '(org-pomodoro-length 25)
 '(org-pomodoro-short-break-length 5)
 '(org-tags-column -80)
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
 '(package-selected-packages
   (quote
	(web-mode flyspell-correct-helm yasnippet-snippets function-args atom-one-dark-theme flycheck matlab-mode edit-indirect multiple-cursors all-the-icons all-the-icons-dired json-mode org-beautify-theme web-beautify emmet-mode org-jekyll figlet gnuplot gnuplot-mode cdlatex org-bullets jekyll-modes markdown-mode powerline shell-pop undo-tree window-numbering js2-mode bison-mode company swiper counsel popwin reveal-in-osx-finder org-pomodoro helm-ag yasnippet auto-yasnippet neotree exec-path-from-shell which-key auctex company-auctex ag helm helm-swoop helm-gtags ggtags hungry-delete smartparens expand-region iedit monokai-theme moe-theme)))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#dc322f")
	 (40 . "#c85d17")
	 (60 . "#be730b")
	 (80 . "#b58900")
	 (100 . "#a58e00")
	 (120 . "#9d9100")
	 (140 . "#959300")
	 (160 . "#8d9600")
	 (180 . "#859900")
	 (200 . "#669b32")
	 (220 . "#579d4c")
	 (240 . "#489e65")
	 (260 . "#399f7e")
	 (280 . "#2aa198")
	 (300 . "#2898af")
	 (320 . "#2793ba")
	 (340 . "#268fc6")
	 (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
	(unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-external-variable ((((class color) (min-colors 89)) (:foreground "#ff8700" :underline t)))))
