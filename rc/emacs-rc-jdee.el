;;; emacs-rc-jdee.el ---

;; Copyright (C) 2014 Igor Bel
;;
;; Author: igorb@gmail.com
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet

;; For JDE
(add-to-list 'load-path "/home/igorb/emacs/jde/lisp")
(require 'jde)
(add-to-list 'load-path "/home/igorb/emacs/jde-docindex/lisp")
                                        ;(require 'jde-docindex)

(require 'generic-x)
(add-to-list 'auto-mode-alist
             '("\\.properties$" . java-properties-generic-mode))

;;; emacs-rc-jdee.el ends here
