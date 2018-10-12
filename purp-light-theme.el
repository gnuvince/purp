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

(deftheme purp-light
  "a theme that highlights only a few constructs")

(purp-common-mktheme
 'purp-light
 :default-fg          "#000000"
 :string-fg           "#cc5522"
 :function-fg         "#ff22ff"
 :comment-fg          "#008800"

 :default-bg          "#ffffff"
 :bright-bg           "#ffaaff"
 :inactive-bg         "#cccccc"

 :error-fg            "#ffff00"
 :error-bg            "#aa0000"

 ;; special cases
 :hl-line-bg          "#f0f0f0"
 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'purp-light)

;;; purp-light-theme.el ends here
