;;; purp-light-theme.el --- A light color theme with few colors

;;; Copyright (C) 2018 Vincent Foley

;; Author: Vincent Foley <vfoley@gmail.com>
;; URL: https://github.com/gnuvince/purp
;; Version: 1.0
;; Keywords: faces

;;; Commentary:
;;; This is the light variant of purp.

;;; Code:

(require 'purp-common)

(deftheme blurb
  "a theme that highlights only a few constructs")

(purp-common-mktheme
 'blurb
 :default-fg          "#fffbf6"
 :string-fg           "#f6c744"
 :function-fg         "#49a4f8"
 :comment-fg          "#a47de9"

 :default-bg          "#101421"
 :bright-bg           "#565656"
 :inactive-bg         "#2e2e2e"

 :error-fg            "#ffff00"
 :error-bg            "#aa0000"

 ;; special cases
 :hl-line-bg          "#303030"
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'blurb)

;;; blurb-theme.el ends here
