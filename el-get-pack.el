;;; el-get-pack.el --- el-get bindings setup

;; Copyright (C) 2013-2018  Antoine R. Dumont (@ardumont)
;; Author: Antoine R. Dumont (@ardumont) <antoine.romain.dumont@gmail.com>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
