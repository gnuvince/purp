;;; blurb --- an Emacs theme

;;; Commentary:

;;; I find that most themes highlight too many things
;;; and that makes nothing really stand out.  In blurb,
;;; I try to highlight only a few faces:
;;;
;;; - string and character literals
;;; - comments
;;; - function declarations
;;;
;;; Everything else is kept to the default foreground color.


;;; Code:

(require 'purp-common)

(deftheme blurb
  "a theme that highlights only a few constructs")

(mktheme 'blurb
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

(provide-theme 'blurb)

;;; blurb-theme ends here
