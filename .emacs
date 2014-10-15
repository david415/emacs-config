
; nickm's emacs settings for editing tor source properly
    (add-hook 'c-mode-hook
          (lambda ()
            (font-lock-mode 1)
            (set-variable 'show-trailing-whitespace t)

            (let ((fname (expand-file-name (buffer-file-name))))
              (cond
               ((string-match "^/home/human/projects/libevent" fname)
                (set-variable 'indent-tabs-mode t)
                (set-variable 'c-basic-offset 4)
                (set-variable 'tab-width 4))
               ((string-match "^/home/human/projects/tor" fname)
                (set-variable 'indent-tabs-mode nil)
                (set-variable 'c-basic-offset 2))
               ((string-match "^/home/human/projects/openssl" fname)
                (set-variable 'indent-tabs-mode t)
                (set-variable 'c-basic-offset 8)
                (set-variable 'tab-width 8))
            ))))

;; specify color-theme instead of specifying colors
;; apt-get install emacs-goodies-el
;(add-to-list 'load-path "/usr/share/emacs23/site-lisp/emacs-goodies-el/color-theme.el")
;(require 'color-theme)
;(eval-after-load "color-theme"
;  '(progn
;     (color-theme-initialize)
;     (color-theme-arjen)))

 (set-foreground-color "#E0DFDB")
 (set-background-color "#000000")
(custom-set-variables
 '(inhibit-startup-screen t)
 '(rst-level-face-base-color "grey")
 '(rst-level-face-base-light 21))
(custom-set-faces
 )

(add-to-list 'load-path "/home/human/.emacs.d/")

;; Golang
; (add-to-list 'load-path "/home/amnesia/Persistent/.emacs.d/go-mode.el")
; (require 'go-mode-load)

;; JSON
;(load "/home/human/.emacs.d/json-mode.el")
;(setq auto-mode-alist (cons '("\\.json\\'" . js-mode) auto-mode-alist))
;(defun beautify-json ()
;  (interactive)
;  (let ((b (if mark-active (min (point) (mark)) (point-min)))
;        (e (if mark-active (max (point) (mark)) (point-max))))
;    (shell-command-on-region b e
;     "python -mjson.tool" (current-buffer) t)))

;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-font-lock-mode 1)

(setq org-agenda-files (list "~/org/general.org"
                             "~/org/tor.org"
                             "~/org/tahoe.org"))
;; org-mode latex preview!?
; (setq org-latex-create-formula-image-program 'imagemagick)

;; fucking windows key. what is it good for? meta.
(setq x-super-keysym 'meta)
