;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; define plugins home directory
(add-to-list 'load-path (expand-file-name "plugins" user-emacs-directory))

;; use C-c to select next match word
(require 'mark-more-like-this)
(global-set-key (kbd "C-c C-c") 'mark-next-like-this)

(global-set-key (kbd "C-c y") 'yas-global-mode)

;; use C-= expand region
(require 'expand-region)
(global-set-key (kbd "C-c =") 'er/expand-region)

;; add association of .m file with octave-mode
(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
       auto-mode-alist))


