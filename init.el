;; emacs browser
;;(setq browse-url-browser-function 'browse-url-default-browser)

;; delete-char
;; delete-forward-char
;; delete-backward-char
;; delete-horizontal-space
;; delete-blank-lines
;; delete-indentation
;; just-one-space
;; kill commands
;; kill-region
;; kill-ring-save
;; kill-word
;; backward-kill-word
;; kill-sentense
;; backward-kill-sentence
;; kill-sexp
;; zap-to-char

;; emacs -u /home/anotherusr/eamcs.d/init.el
;; emacs -q => prevents loading the init file
;; default.el

(menu-bar-mode -1)

(set-language-environment "UTF-8")
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq c-default-style "linux"
	  c-basic-offset 4)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-w") 'backward-kill-word)

(put 'upcase-region 'disabled nil)
(load "~/.emacs.d/google-c-style.el")
(add-hook 'c-mode-common-hook 'google-set-c-style)
(put 'erase-buffer 'disabled nil)
(put 'downcase-region 'disabled nil)
