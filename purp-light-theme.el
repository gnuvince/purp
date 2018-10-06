;;; purp-light --- an Emacs theme

;;; Commentary:

;;; I find that most themes highlight too many things
;;; and that makes nothing really stand out.  In purp,
;;; I try to highlight only a few faces:
;;;
;;; - string and character literals
;;; - comments
;;; - function declarations
;;;
;;; Everything else is kept to the default foreground color.


;;; Code:

(require 'purp-common)

(deftheme purp-light
  "a theme that highlights only a few constructs")

(mktheme 'purp-light
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

(provide-theme 'purp-light)

;;; purp-light-theme ends here
