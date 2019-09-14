(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-w") 'backward-kill-word)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "google-c-style")
(add-hook 'c-mode-common-hook 'google-set-c-style)
