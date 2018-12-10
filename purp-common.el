;;; purp-common.el --- simple themes with few colors

;; Author: Vincent Foley <vfoley@gmail.com>
;; URL: https://github.com/gnuvince/purp
;; Version: 1.0
;; Keywords: faces

;;; Commentary:
;;; - mktheme: a function that abstracts away the actual colors

;;; Code:

(defun purp-common-mktheme (theme-name &rest colors)
  "Create a purp theme.
THEME-NAME is the of the variant, COLORS is a plist of the colors to use."
  (let* (
         ;; The four main text colors (excluding special handling)
         (default-fg  (plist-get colors :default-fg))
         (string-fg   (plist-get colors :string-fg))
         (function-fg (plist-get colors :function-fg))
         (comment-fg  (plist-get colors :comment-fg))

         (default-bg  (plist-get colors :default-bg))
         (bright-bg   (plist-get colors :bright-bg))
         (inactive-bg (plist-get colors :inactive-bg))

         (error-fg    (plist-get colors :error-fg))
         (error-bg    (plist-get colors :error-bg))

         ;; special cases
         (hl-line-bg  (plist-get colors :hl-line-bg))
         )
    (custom-theme-set-faces
     theme-name
     `(default                             ((t (:background ,default-bg :foreground ,default-fg))))
     `(region                              ((t (:background ,bright-bg))))
     `(cursor                              ((t (:background ,default-fg))))

     `(font-lock-builtin-face              ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-comment-delimiter-face    ((t (:background ,default-bg :foreground ,comment-fg))))
     `(font-lock-comment-face              ((t (:background ,default-bg :foreground ,comment-fg))))
     `(font-lock-constant-face             ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-doc-face                  ((t (:background ,default-bg :foreground ,comment-fg))))
     `(font-lock-function-name-face        ((t (:background ,default-bg :foreground ,function-fg))))
     `(font-lock-keyword-face              ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-negation-char-face        ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-preprocessor-face         ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-regexp-grouping-backslash ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-regexp-grouping-construct ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-string-face               ((t (:background ,default-bg :foreground ,string-fg))))
     `(font-lock-type-face                 ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-variable-name-face        ((t (:background ,default-bg :foreground ,default-fg))))
     `(font-lock-warning-face              ((t (:weight bold :background ,error-bg :foreground ,error-fg))))

     `(mode-line                           ((t (:foreground ,default-fg :background ,bright-bg))))
     `(mode-line-inactive                  ((t (:foreground ,default-fg :background ,inactive-bg))))

     `(fringe                              ((t (:background ,default-bg))))

     ;; isearch
     `(lazy-highlight                      ((t (:background ,bright-bg))))

     `(hl-line                             ((t (:background ,hl-line-bg))))

     `(show-paren-mismatch                 ((t (:background ,error-bg))))
     `(show-paren-match                    ((t (:background ,bright-bg))))

     ;; markdown-mode
     `(markdown-blockquote-face       ((t (:foreground ,default-fg))))
     `(markdown-bold-face             ((t (:foreground ,default-fg :weight bold))))
     `(markdown-code-face             ((t (:foreground ,default-fg))))
     `(markdown-comment-face          ((t (:foreground ,comment-fg))))
     `(markdown-footnote-marker-face  ((t (:foreground ,default-fg))))
     `(markdown-footnote-text-face    ((t (:foreground ,default-fg))))
     `(markdown-gfm-checkbox-face     ((t (:foreground ,default-fg))))
     `(markdown-header-delimiter-face ((t (:foreground ,default-fg))))
     `(markdown-header-face           ((t (:foreground ,default-fg))))
     `(markdown-header-face-1         ((t (:foreground ,function-fg))))
     `(markdown-header-face-2         ((t (:foreground ,function-fg))))
     `(markdown-header-face-3         ((t (:foreground ,function-fg))))
     `(markdown-header-face-4         ((t (:foreground ,function-fg))))
     `(markdown-header-face-5         ((t (:foreground ,function-fg))))
     `(markdown-header-face-6         ((t (:foreground ,function-fg))))
     `(markdown-header-rule-face      ((t (:foreground ,default-fg))))
     `(markdown-highlight-face        ((t (:foreground ,default-fg))))
     `(markdown-hr-face               ((t (:foreground ,default-fg))))
     `(markdown-inline-code-face      ((t (:foreground ,default-fg))))
     `(markdown-italic-face           ((t (:foreground ,default-fg :slant italic))))
     `(markdown-language-info-face    ((t (:foreground ,default-fg))))
     `(markdown-language-keyword-face ((t (:foreground ,default-fg))))
     `(markdown-line-break-face       ((t (:foreground ,default-fg))))
     `(markdown-link-face             ((t (:foreground ,default-fg))))
     `(markdown-link-title-face       ((t (:foreground ,default-fg))))
     `(markdown-list-face             ((t (:foreground ,default-fg))))
     `(markdown-markup-face           ((t (:foreground ,default-fg))))
     `(markdown-math-face             ((t (:foreground ,default-fg))))
     `(markdown-metadata-key-face     ((t (:foreground ,comment-fg))))
     `(markdown-metadata-value-face   ((t (:foreground ,comment-fg))))
     `(markdown-missing-link-face     ((t (:foreground ,default-fg))))
     `(markdown-plain-url-face        ((t (:foreground ,default-fg))))
     `(markdown-pre-face              ((t (:foreground ,default-fg))))
     `(markdown-reference-face        ((t (:foreground ,default-fg))))
     `(markdown-strike-through-face   ((t (:foreground ,default-fg :strike-through t))))
     `(markdown-url-face              ((t (:foreground ,default-fg))))

     )))

(provide 'purp-common)

;;; purp-common.el ends here
