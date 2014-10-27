;; preproc-font-lock-screenshot-setup.el --- prepare Emacs for screenshot.

;; Usage:
;;
;;   emacs -q -l preproc-font-lock-screenshot-setup.el
;;
;;   Take screenshot. OS X: Cmd-Shift-4 SPC click on window.

(setq inhibit-startup-screen t)

(blink-cursor-mode -1)

(defvar preproc-font-lock-screenshot-dir
  (or (and load-file-name
           (file-name-directory load-file-name))
      default-directory))

(load (concat preproc-font-lock-screenshot-dir "../preproc-font-lock.el"))
(preproc-font-lock-global-mode 1)
(find-file (concat preproc-font-lock-screenshot-dir "demo.c"))

(set-frame-size (selected-frame) 80 24)

(message "")

;; preproc-font-lock-screenshot-setup.el ends here
