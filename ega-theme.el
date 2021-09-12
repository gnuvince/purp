;;; ega-theme.el --- A light color theme with few colors

;;; Copyright (C) 2018 Vincent Foley

;; Author: Vincent Foley <vfoley@gmail.com>
;; URL: https://github.com/gnuvince/purp
;; Version: 1.0
;; Keywords: faces

;;; Commentary:
;;; This is an EGA variant of purp.

;;; Code:

(require 'purp-common)

(deftheme ega
  "a theme that highlights only a few constructs")

(purp-common-mktheme
 'ega
 :default-fg          "#ffffff"
 :string-fg           "#ffaa55"
 :function-fg         "#5555ff"
 :comment-fg          "#55ff55"

 :default-bg          "#000000"
 :bright-bg           "#000055"
 :inactive-bg         "#555555"

 :error-fg            "#ffff00"
 :error-bg            "#aa0000"

 ;; special cases
 :hl-line-bg          "#000055"
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'ega)

;;; ega-theme.el ends here
