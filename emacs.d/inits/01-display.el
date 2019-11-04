;; Color theme
(load-theme 'deeper-blue)

;; Window Setting
;; (if window-system
;;     (progn (setq initial-frame-alist '((fullscreen . maximized)))))
(if window-system
    (progn (setq initial-frame-alist
                 '(
                   (top . 0)
                   (left . 800)
                   (width . 120)
                   (height . 100)
                   )
                 )))

;; Highlight current line
(global-hl-line-mode)

;; Highlight trailing space
(setq-default show-trailing-whitespace t)

;; Don't show startup message
(setq inhibit-startup-message t)

;; Don't show toolbar
(tool-bar-mode 0)
