;;; emacs-rc-elisp.el --- Settings for Emacs Lisp editing

;; Copyright (C) 2014 Igor Bel
;;
;; Author: igorb@gmail.com
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet

(defun igorb/elisp-mode-hook ()
  (setq indent-tabs-mode t)
  (abbrev-mode 1)
  (auto-fill-mode 1)
  (turn-on-eldoc-mode)
  
  ;;(paredit-mode 1)

  (local-set-key [return] 'newline-and-indent)

  (local-set-key "\C-cf" 'find-function)
  (local-set-key "\C-c4f" 'find-function-other-window)
  (local-set-key "\C-c5f" 'find-function-other-frame)
  (local-set-key "\C-ck" 'find-function-on-key)

;;  (add-to-list 'ac-sources 'ac-source-emacs-lisp-features)
  (set (make-local-variable 'ac-auto-start) 3)
  (set (make-local-variable 'ac-auto-show-menu) 0.5)
  )
(add-hook 'emacs-lisp-mode-hook 'igorb/elisp-mode-hook)
(add-hook 'emacs-lisp-mode-hook 'igorb/common-prog-hook)
(add-hook 'emacs-lisp-mode-hook 'igorb/common-hook)

;;
(add-to-list 'auto-mode-alist '("\\.gnus$" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("\\.emacs$" . emacs-lisp-mode))


;;; emacs-rc-elisp.el ends here
