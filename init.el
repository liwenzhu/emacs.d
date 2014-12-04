;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(global-set-key (kbd "C-c y") 'yas-global-mode)
(global-set-key (kbd "C-c a") 'auto-complete-mode)
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c =") 'er/expand-region)
(global-set-key (kbd "C-c C-l") 'goto-line)

;; add association of .m file with octave-mode
(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
       auto-mode-alist))

;; disable the backup files end with ~
(setq make-backup-files nil)

;; set column mode default
(setq column-number-mode t)

;; show line number on the left
(global-linum-mode t)

;; open ido-mode interaction of do
(ido-mode t)

;; set yas-global-mode default
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20141117.327")
(require 'yasnippet)
(yas-global-mode 1)

;; set auto-complete-mode default
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20141120.1742")
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20141111.2346")
(require 'auto-complete)
(global-auto-complete-mode 1)

;; use melpa package repository
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
    )

;; add hooks
;; add hook after js-mode highlight after 81 column
(add-hook 'js-mode-hook
	  (lambda () (highlight-lines-matching-regexp ".\\{81\\}" "hi-yellow")))

;; rss feed list
(setq elfeed-feeds
      '("https://news.ycombinator.com/rss"))

;; define a function for insert star comments
(defun insert-doc-comment () (interactive)
       (insert
	"/**\n"
	" * Brief description. \n"
	" * @param \n"
	" * @return \n"
	" * @author Vince<lee.wenzhu@gmail.com> \n"
	" */ \n"))
(global-set-key (kbd "C-c C-d") 'insert-doc-comment)
