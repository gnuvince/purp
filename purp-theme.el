;;; purp-light-theme.el --- A dark color theme with few colors

;;; Copyright (C) 2018 Vincent Foley

;; Author: Vincent Foley <vfoley@gmail.com>
;; URL: https://github.com/gnuvince/purp
;; Version: 1.0
;; Keywords: faces

;;; Commentary:
;;; This is the dark variant of purp.

;;; Code:

(require 'purp-common)

(deftheme purp
  "a theme that highlights only a few constructs")

(purp-common-mktheme
 'purp
 :default-fg          "#cccccc"
 :string-fg           "#ffcc55"
 :function-fg         "#ff55ff"
 :comment-fg          "#55ff55"

 :default-bg          "#222222"
 :bright-bg           "#550055"
 :inactive-bg         "#555555"

 :error-fg            "#ffff00"
 :error-bg            "#aa0000"

 ;; special cases
 :hl-line-bg          "#303030"
 )


(provide-theme 'purp)

;;; purp-theme.el ends here
