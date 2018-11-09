;;; el-get-pack.el --- el-get bindings setup

;;; Commentary:

;;; Code:

(require 'el-get)

(defvar el-get-pack-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c l r") 'el-get-remove)
    (define-key map (kbd "C-c l R") 'el-get-reinstall)
    (define-key map (kbd "C-c l i") 'el-get-install)
    (define-key map (kbd "C-c l u") 'el-get-update)
    (define-key map (kbd "C-c l U") 'el-get-reload)
    map)
  "Keymap for el-get-pack mode.")

(define-minor-mode el-get-pack-mode
  "Minor mode to consolidate el-get-pack extensions.

\\{el-get-pack-mode-map}"
  :lighter " EGP"
  :keymap el-get-pack-mode-map
  :global t)

(define-globalized-minor-mode global-el-get-pack-mode el-get-pack-mode el-get-pack-on)

(defun el-get-pack-on ()
  "Turn on `el-get-pack-mode'."
  (el-get-pack-mode +1))

(provide 'el-get-pack)
;;; el-get-pack.el ends here
