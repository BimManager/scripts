;; emacs browser
;;(setq browse-url-browser-function 'browse-url-default-browser)

(setq make-backup-files nil)
(setq-default fill-column 80)


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

;; comint-clear-buffer C-c M-o (to clear the shell buffer in emacs)
;; C-q C-j to search for a newline character C-q (quoted-insert)

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-c C-k") 'kill-region)
(global-set-key (kbd "M-k") 'kill-whole-line)

;; emacs -u /home/anotherusr/eamcs.d/init.el
;; emacs -q => prevents loading the init file
;; default.el

(setq line-number-mode 1)
(setq column-number-mode 1)
(menu-bar-mode -1)

(set-language-environment "UTF-8")
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq c-default-style "linux"
	  c-basic-offset 4)

(add-to-list 'auto-mode-alist '("\\.cs\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.xaml\\'" . xml-mode))

;; package loading
;;(add-to-list 'load-path "~/.emacs.d")
;;(add-to-list 'load-path "~/.emacs.d/lisp")
(load "~/.emacs.d/google-c-style.el")
(add-hook 'c-mode-common-hook 'google-set-c-style)
(load "~/.emacs.d/csharp-compilation.el")
(load "~/.emacs.d/csharp-mode.el")

(require 'csharp-mode)
(require 'json)
(load "~/.emacs.d/powershell.el")
(require 'powershell)

(put 'erase-buffer 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(auto-insert-mode t)
(setq auto-insert-query nil)

(eval-after-load 'autoinsert
  '(define-auto-insert
     '("\\.\\(cc\\|cxx\\|cpp\\|c++\\)\\'" . "C++ skeleton")
     '("Short description: "
       "// Copyright 2021 kkozlov" \n \n
       "#include <iostream>" \n \n
       "int main(int argc, char **argv) {" \n
       > _ \n
       "return 0;" ?\n
       "}")))

(eval-after-load 'autoinsert
  '(define-auto-insert
     '("\\.c\\'" . "C skeleton")
     '("Short description: "
       "// Copyright 2021 kkozlov" \n \n
       "#include <stdlib.h>" \n
       "#include <stdio.h>" \n \n
       "int main(int argc, char **argv)" ?\n
       "{" \n
       > _ \n
       "return EXIT_SUCCESS;" ?\n
       "}")))


 ;; Gmail connection
(setq smtpmail-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-service 587)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-indent-level 2)
 '(package-selected-packages '(json-mode))
 '(send-mail-function 'smtpmail-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; M-x customize
;; M-x customize-variable
;; js-indent-level

;; Hooks
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
