;;; el-get-pack.el --- Make the packs el-get aware

;;; Commentary:

;;; Code:

;; (url-retrieve
;;  "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el"
;;  (lambda (s)
;;    (goto-char (point-max))
;;    (eval-print-last-sexp)))

(use-package el-get
  :config
  (add-to-list 'load-path "~/.emacs.d/el-get/el-get")
  (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
  ;; (el-get 'sync)
  )

(provide 'el-get-pack)
;;; el-get-pack.el ends here
