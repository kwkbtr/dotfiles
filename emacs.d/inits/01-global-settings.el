;; Don't make backup files
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq delete-auto-save-files t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Don't use tab for indent
(setq-default tab-width 4
              indent-tabs-mode nil)

;; Disable beep sound
(setq ring-bell-function 'ignore)
