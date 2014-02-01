;;; emacs-rc-vcs-misc.el ---

;; Copyright (C) Igor Bel
;;
;; Author: Igor Bel <igorb@gmail.com>
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet

;; PSVN customization
(custom-set-variables
 '(svn-status-svn-environment-var-list (quote ("LC_MESSAGES=C" "LANG=C" "LC_ALL=C"))))
(autoload 'svn-status "psvn" nil t)

;;(setq vc-handled-backends nil)

(setq vc-follow-symlinks t)

;;; emacs-rc-vcs-misc.el ends here
