(menu-bar-mode -1)
(ido-mode 1)

(setq-default tab-width 4)
(setq-default tab-always-indent t)
(setq-default indent-tabs-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(package-initialize)
(global-auto-complete-mode t)

(global-set-key (kbd "C-c C-w") 'whitespace-mode)

(require 'package)
(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)



