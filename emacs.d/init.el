(require 'cask)
(cask-initialize)

(require 'use-package)

(use-package init-loader
  :config
  (setq init-loader-show-log-after-init "error-only")
  (init-loader-load "~/.emacs.d/inits"))
