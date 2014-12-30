;; Color theme
(load-theme 'deeper-blue)

;; Window Setting
(if window-system
    (progn (setq initial-frame-alist '((fullscreen . maximized)))))

;; Highlight current line
(global-hl-line-mode)

;; Highlight trailing space
(setq-default show-trailing-whitespace t)

;; Don't show startup message
(setq inhibit-startup-message t)

;; Don't show toolbar
(tool-bar-mode 0)
