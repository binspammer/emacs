;;; emacs-rc-slime.el ---

;; Copyright (C) Igor Bel
;;
;; Author: Igor Bel <igorb@gmail.com>
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet

;;; SLIME
(require 'inf-lisp)
;(setq inferior-lisp-program "sbcl")
(setq slime-net-coding-system 'utf-8-unix)
(require 'slime)
(slime-setup)
(add-hook 'lisp-mode-hook
          (lambda ()
            (slime-mode t)))

(add-hook 'inferior-lisp-mode-hook
          (lambda ()
            (inferior-slime-mode t)))

;;(add-hook 'slime-mode-hook (lambda () (slime-autodoc-mode t)))

(setq slime-lisp-implementations '((clojure ("clj-cmd") :init swank-clojure-init)))
;(add-to-list 'slime-lisp-implementations '(sbcl ("sbcl")  :coding-system utf-8-unix))

(setq slime-use-autodoc-mode nil)
(eval-after-load "slime"
  '(progn
     (slime-setup '(slime-fancy slime-asdf slime-banner slime-fuzzy slime-repl))
     (setq slime-complete-symbol*-fancy t)
     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
     (setq slime-repl-history-remove-duplicates t)
     (setq slime-repl-history-trim-whitespaces t)
     (setq slime-protocol-version 'ignore) ;; ignore version mismatch
     ))

(global-set-key [(control f11)] 'slime-selector)

(add-hook 'slime-repl-mode-hook
	  (lambda ()
	    (clojure-mode-font-lock-setup)
	    (font-lock-mode 1)))

(defun fix-paredit-repl ()
  (interactive)
  (local-set-key "{" 'paredit-open-curly)
  (local-set-key "}" 'paredit-close-curly)
  (modify-syntax-entry ?\{ "(}") 
  (modify-syntax-entry ?\} "){")
  (modify-syntax-entry ?\[ "(]")
  (modify-syntax-entry ?\] ")["))

;;
;;(require 'ac-slime)
;;(add-hook 'slime-mode-hook 'set-up-slime-ac)
;;(add-hook 'slime-connected-hook
;;          (lambda ()
;;            (define-key slime-mode-map (kbd "TAB") 'auto-complete)
;;            (define-key slime-repl-mode-map (kbd "TAB") 'auto-complete)))
;;(add-hook 'slime-mode-hook (lambda () (auto-complete-mode t)))
;;(add-hook 'slime-repl-mode-hook (lambda () (auto-complete-mode t)))

;;; emacs-rc-slime.el ends here
