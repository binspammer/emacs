;;; emacs-rc-autocomplete.el ---

;; Copyright (C) Igor Bel
;;
;; Author: Igor Bel <igorb@gmail.com>

(require 'auto-complete-config)
(ac-config-default)
(setq ac-auto-start nil)
(define-key ac-mode-map [(meta return)] 'auto-complete)

(add-to-list 'ac-dictionary-directories "~/emacs/ac-dicts")

