(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://stable.list(melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For import compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://e.pa.gnu.org/packages/")))
(package-initialize)

;; Sonic Pi support!
(add-to-list 'load-path "~/.sonic-pi.el/")
(require 'sonic-pi)
(setq sonic-pi-path "/Applications/Sonic Pi.app/") ; Must end with "/"
(add-hook 'sonic-pi-mode-hook
	  (lambda ()
	    (define-key ruby-mode-map "\C-c\C-b" 'sonic-pi-stop-all)))

;; Technicolor Rainbow
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode-enable)
(add-hook 'prog-mode-hook (lambda () (rainbow-identifiers-mode 1)))

;; Let's get eVil
(evil-mode 1)
