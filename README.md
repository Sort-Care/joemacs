# joemacs
HudsonJoe's personal emacs configuration 
Screen Shots (Using [meo-theme](https://github.com/kuanyui/moe-theme.el))
![Dark](img/dark2.png)
![Light](img/light.png)

**Table of Contents**
- [Installation](#installation)
    - [Cautions and Prerequisites](#cautions-and-prerequisites)
    - [Quick Install](#quick-install-with-git)
    - [Manually](#manually)
    - [Dependencies](#dependencies)
- [Packages and Usage](#packages-and-usage)
    - [Included Packages](#included-packages) 
    - [Existed Keybindings](#existed-keybindings)
         - [1. Functionalities](#1-functionalities)
         - [2. Window Move](#2-window-move)
         - [3. Org Mode](#3-org-mode)
         - [4. Editing](#4-editing)
- [File Tree](#file-tree)
 
 

## Installation
### Cautions and Prerequisites
- Your Emacs Version HAS TO be NO LOWER THAN 24.4, for there are many usages of 'with-eval-after-load'. However, if you still want to use it in some early version of emacs, make sure that you get rid of all 'with-eval-after-load', replacing them with (require 'package-name) instead. All files containing 'with-eval-after-load' will be given in Appendix.

- If you are using Windows, probably the neotree package functions would not work right.
- Do customize the codes in init-org.el before you use org-agenda and org-capture 

### Quick Install with Git
```
git clone https://github.com/Sort-Care/joemacs ~/.emacs.d
```

### Manually
If you don't want to use git, try install manually:
- create folder .emacs.d under your home path(~).
- copy init.el and lisp folder to your .emacs.d folder
- restart your emacs, it will install all packages needed from the internet

### Dependencies
- helm-ag: to make helm ag work, you need to install [the silver searcher](https://github.com/ggreer/the_silver_searcher)

## Packages and Usage
### Included packages
```
			     ;;---------- special file modes ----------
			     js2-mode
			     bison-mode
			     web-mode

			     
			     ;;----------- functionalities ---------- 
			     company
			     swiper
			     counsel
			     popwin
			     reveal-in-osx-finder
			     org-pomodoro
			     helm-ag
			     yasnippet
			     auto-yasnippet
			     neotree
			     exec-path-from-shell
			     
			     
			     ;;---------- edit convenience ---------- 
			     hungry-delete
			     smartparens
			     expand-region
			     iedit

			     
			     ;;--------------- theme ---------- 
			     monokai-theme
			     moe-theme	   
```

### Existed Keybindings

#### 1. Functionalities
| File and Command Functions       | Key Bindings           |
| ------------- |:-------------:|
| Open Recent Files   | C-x C-r |
| Find Function      | C-h C-f      |
| Find Variable | C-h C-v      |
|Find Function on key|C-h C-k|
|Open [Swiper](https://github.com/abo-abo/swiper)| C-s |
|ivy-resume|C-c C-r|
|Open counsel M-x|M-x|
|Find File|C-x C-f|
|Counsel Describe Function|C-h f|
|Counsel Describe Variable|C-h v|
|Counsel Git Search| C-c p f|
|Counsel Ag Search| C-c p a|
|Counsel Locate Word| C-c c l|
|[Reveal File in Finder (Mac OS X)](https://github.com/kaz-yos/reveal-in-osx-finder)|C-c z|
|[Helm-ag](https://github.com/syohex/emacs-helm-ag) Search Project Root|C-c p s|
|Open File Tree ([neotree](https://github.com/jaypei/emacs-neotree))|f8|

#### 2. Window Move
Caution: Note that if you are using systems **other than Mac**, you need to redefine these window move keys for the C-S key settings conflict with some cursor selecting functions.

|Window Move| Key Bindings|
|---|:---:|
|Move Focusing Window ||
|--------- window up|C-S-p|
|--------- window down|C-S-n|
|--------- window left|C-S-b|
|--------- window right|C-S-f|


#### 3. Org Mode
I added some TODO states to org mode, use C-c C-t to see what are they. Some of these states would require some information for changing into them. 
Before using Open Org Agenda shortcut, you need to appoint a folder like the example:
```
 (setq org-agenda-files '("~/org"))
```
Put this in init-org.el, after the (require 'org) or between the parentheses of with-eval-after-load function, like this:
```
(with-eval-after-load 'org
  (setq org-agenda-files '("~/org"))
)
```

|Org Mode| Key Bindings|
| --------- |:--------------:|
|Open Org Agenda ( need customizing before being used)|C-c a|
|Org Capture ( need customizing before being used)|C-c r|
|Org-pomodoro Start a Timer|C-c o p|


#### 4. Editing
|Editing Shortcuts| Key Bindings|
| --------- |:--------------:|
|Indent Buffer or Region|C-M-\\|
|Hippie Expand Completion|s-/|
|[Expand Region Select](https://github.com/magnars/expand-region.el)|C-=|
|Enter [iedit](https://github.com/victorhge/iedit) Mode|M-s e|
|Selecting Candidates of [Company](https://github.com/company-mode/company-mode) Completion||
|------- Next One|C-n|
|------- Previous One|C-p|
|[Auto yasnippet](https://github.com/abo-abo/auto-yasnippet) Create| C-c s c|
|Auto yasnippet Expand| C-c s e|
|[Move Line or Region](https://github.com/targzeta/move-lines)||
|------- Up|M-p|
|------- Down|M-n|


## File Tree
.emacs.d<br>
|-- init.el<br>
|-- lisp<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|--- init-packages.el<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|--- init-ui.el<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|--- init-better-defaults.el<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|--- init-keybindings.el<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|--- init-org.el<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|--- custom.el<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|--- move-lines.el<br>

## Appendix
### Files containing 'with-eval-after-load'
1. init-better-defaults.el: line 105: (with-eval-after-load 'dired
2. init-keybindings.el    : line 47 : (with-eval-after-load 'company
3. init-keybindings.el    : line 54 : (with-eval-after-load 'dired
4. init-org.el            : line 4  : (with-eval-after-load 'org

If you are using emacs earlier than version 24.4, you need to locate these file and replace all "with-eval-after-load", or the emacs launching process will throw errors like
```
Symbol's function definition is void: with-eval-after-load
```

### Replacing Example:
For init-better-defaults.el, line 105:
The origin code are as follows:
```
;;延迟Dired load
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
```
Assume that we have come across an error saying function definition is void for: with-eval-after-load. To fix it, we need to disable codes above and add some lines as depcit below:
```
(require 'dired)
(defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
```
DO NOT Replace "with-eval-after-load" with "require" if not necessary, it is feasible by will slow down the launch speed of Emacs.
