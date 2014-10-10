;;; preproc-font-lock-test-setup.el --- Setup and execute all tests.

;;; Commentary:

;; This package sets up a suitable enviroment for testing
;; preproc-font-lock, and executes the tests.
;;
;; Usage:
;;
;;   emacs -q -l preproc-font-lock-test-setup.el
;;
;; Note that this package assumes that some packages are located in
;; specific locations.
;;
;; Note that different Emacs versions highlight things slightly
;; differently. The corresponding .faceup file was generated using
;; Emacs 24.3.

;;; Code:

(setq inhibit-startup-screen t)
(prefer-coding-system 'utf-8)

(defvar preproc-font-lock-test-setup-directory
  (if load-file-name
      (file-name-directory load-file-name)
    default-directory))

(dolist (dir '("." ".." "../../faceup"))
  (add-to-list 'load-path (concat preproc-font-lock-test-setup-directory dir)))

(require 'preproc-font-lock)
(require 'preproc-font-lock-test-files)

(ert t)

;;; preproc-font-lock-test-setup.el ends here
