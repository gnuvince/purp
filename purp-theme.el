;;; purp --- an Emacs theme

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

(deftheme purp
  "a theme that highlights only a few constructs")

(mktheme 'purp
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

;;; purp-theme ends here
