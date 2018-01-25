
;; Set some colors
(set-background-color "snow")
(set-face-background 'default "snow")
(set-face-background 'region "cyan")
(set-face-foreground 'default "gray35")
(set-face-foreground 'region "black")
(set-foreground-color "black")
(set-cursor-color "light sky blue")

(setq c-basic-offset 4)                          ; indent with 4 chars
(setq tab-width 4)                               ; tab width 4 char
(setq indent-tabs-mode nil)                      ; force use of spaces

(setq inhibit-splash-screen t)                   ; hide splash screen
(setq inhibit-startup-message t)                 ; hide startup message

;(turn-on-font-lock)                              ; same as syntax on in Vim
;(global-font-lock-mode 1)
(global-linum-mode 1)                            ; line numbers
;(set-default-font "Terminus-9")                  ; set font to terminus


;; Make F1 invoke help
(global-set-key [f1] 'help-command)
;; Make F2 be `undo'
(global-set-key [f2] 'undo)
;; Make F3 be `find-file'
;;(global-set-key [f3] 'find-file)

;; Set hs-minor mode global used in code folding

;; Copy
(global-set-key [f5] "\M-w")
;; Next definition of the tag
(global-set-key [f6] "\C-u\M-.")
;; Make F7 be go back tag definition
(global-set-key [f7] "\M-*")

;; Shift-F4 is "pop mark off of stack"
(global-set-key [(shift f4)] (lambda () (interactive) (set-mark-command t)))



;; Make F8 be "start macro", F9 be "end macro", F10 be "execute macro"
(global-set-key [f8] 'start-kbd-macro)
(global-set-key [f9] 'end-kbd-macro)
(global-set-key [f10] 'call-last-kbd-macro)

(add-to-list 'auto-mode-alist '("\\.txt\\'" . c++-mode))

;; Set size of the window
(add-to-list 'default-frame-alist '(height . 70))
(add-to-list 'default-frame-alist '(width . 210))

;; Show parenthesis
(show-paren-mode 1)

(setq scroll-step 1) ;; keyboard scroll one line at a time

;; Highlight
(global-hl-line-mode 1)
(set-face-background 'hl-line "wheat")
(set-face-foreground 'highlight nil)


;; Set windows movement
(windmove-default-keybindings 'meta)

;; Set vertical bars on the right
(set-scroll-bar-mode 'right)

;; Set code folding
(add-hook 'c-mode-common-hook
  (lambda()
    (local-set-key (kbd "C-c C-c") 'hs-toggle-hiding)
    (local-set-key (kbd "C-c <up>")    'hs-hide-all)
    (local-set-key (kbd "C-c <down>")  'hs-show-all)
    (hs-minor-mode t)))

;; Automatic sync of all buffers
(global-auto-revert-mode t)
