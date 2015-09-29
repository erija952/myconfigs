;;---------------------;;
;; REQUIREMENTS ;;
;;---------------------;;

;; Add directory for libararies
;;(add-to-list 'load-path "~/.emacs.d/libraries")
(add-to-list 'load-path "~/.emacs.d/")

;;---------------------;;
;; CUSTOMIZATION ;;
;;---------------------;;

;;Allow dead-tilde keys
(require 'iso-transl)

;; CUA mode on
(cua-mode t)

;; Send me straight to *scratch* when loading emacs
(setq inhibit-startup-message t)

;; Color-code stuff
(global-font-lock-mode t)

;; Get rid of menu bar if desired
(menu-bar-mode 1)

;; Stop making backup files
(setq make-backup-files nil)

;; Stop selected region highlight
(transient-mark-mode 0)

;; Change C-x b look
(iswitchb-mode 1)

;; Change yes-or-no --> y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;; Display clock
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)

;; Mark parenthesis
(show-paren-mode 1)

;;-----------------;;
;; Color-Theme ;;
;; Requires http://www.nongnu.org/color-theme/
;; Simple way: apt-get install emacs-goodies-el
;;-----------------;;
(defun current-theme ()
  (interactive)
  (color-theme-install
   '(current-theme
   ((background-color . "#21374f")
   (background-mode . dark)
   (border-color . "#3b566d")
   (cursor-color . "#c9c8c0")
   (foreground-color . "#ffffff")
   (mouse-color . "black"))
   (fringe ((t (:background "#3b566d"))))
   (mode-line ((t (:foreground "#2c4654" :background "#cccccc"))))
   (region ((t (:background "#255283"))))
   (font-lock-builtin-face ((t (:foreground "#67bbd0"))))
   (font-lock-comment-face ((t (:foreground "#8ddd83"))))
   (font-lock-function-name-face ((t (:foreground "#5ccde0"))))
   (font-lock-keyword-face ((t (:foreground "#8bb9ea"))))
   (font-lock-string-face ((t (:foreground "#c76b74"))))
   (font-lock-type-face ((t (:foreground"#6cd5af"))))
   (font-lock-variable-name-face ((t (:foreground "#dfde72"))))
   (minibuffer-prompt ((t (:foreground "#77bdc5" :bold t))))
   (font-lock-warning-face ((t (:foreground "Blue" :bold t))))
   )))
(provide 'current-theme)
(require 'color-theme)
(color-theme-initialize)
(current-theme)

;;---------------------;;
;; MODES ;;
;;---------------------;;

;; Matlab Mode
(autoload 'matlab-mode "matlab" "Matlab Editing Mode" 1)
(add-to-list
 'auto-mode-alist
 '("\\.m$" . matlab-mode))
(setq matlab-indent-function nil)
(setq matlab-shell-command "matlab")

;; Bash Mode
(add-to-list
 'auto-mode-alist
 '(".bashrc" . shell-script-mode))
(add-to-list
 'auto-mode-alist
 '(".muttrc" . shell-script-mode))

;; Lisp Mode
(add-to-list
 'auto-mode-alist
 '(".emacs" . lisp-mode))

;; Python Mode
(add-to-list
 'auto-mode-alist
 '(".py" . python-mode))

;; C Mode
(add-to-list
 'auto-mode-alist
 '(".gmsh" . c-mode))
(add-to-list
 'auto-mode-alist
 '(".cu" . c-mode))
(add-to-list
 'auto-mode-alist
 '(".cl" . c-mode))
;;---------------------;;
;; SHORTCUTS ;;
;;---------------------;;

;; Indent Region
(global-set-key (kbd "C-i") 'indent-region)
;;
;;;; Goto-line
(global-set-key (kbd "C-c g") 'goto-line)

;;
;;;; Query-replace
(global-set-key (kbd "C-q") 'query-replace)
(global-set-key (kbd "C-c q") 'query-replace-regexp)
;;
;;;; Search Regexp
;;(global-set-key (kbd "C-s") 'isearch-forward)
;;(global-set-key (kbd "C-r") 'isearch-backward)
;;(global-set-key (kbd "C-c s") 'isearch-forward-regexp)
;;(global-set-key (kbd "C-c r") 'isearch-backward-regexp)
;;
;;;; Comment/Uncomment region
;;(global-set-key (kbd "C-c n") 'comment-region)
;;(global-set-key (kbd "C-c m") 'uncomment-region)
;;

;; Todo: add autocomplete
;;require 'go-mode-load)
;;(require 'auto-complete)
;;(require 'go-autocomplete)
;;(require 'auto-complete-config)
;;;; (require 'php-mode)
;;(global-auto-complete-mode t)
;;;; Auto-complete configuration
;;(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
;;(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
;;(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
;;(global-auto-complete-mode t)
;;(set-face-background 'ac-candidate-face "lightgray")
;;(set-face-underline 'ac-candidate-face "darkgray")
;;(set-face-background 'ac-selection-face "steelblue")
;;(define-key ac-completing-map "\M-n" 'ac-next)
;;(define-key ac-completing-map "\M-p" 'ac-previous)
;;(setq ac-auto-start 2)
;;(setq ac-dwim t)
;;(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
;;;;yasnippet
;;(require 'yasnippet-bundle)
;;(yas/initialize)
;;
