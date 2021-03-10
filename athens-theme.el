;;; athens-theme.el --- Emacs 24 theme with a light background.

;; Copyright (C) 2018 Inderjit Gill <email@indy.io>

;; Author: Inderjit Gill
;; Keywords: dark color theme
;; URL: http://github.com/indy/color-theme-athens
;; Version: 1.0.0
;; Package-Requires: ((emacs "24"))
;; This version is based on mark-theme (https://github.com/mjfeller/mark-theme)

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

;; clock12 == HSLuv(67.1, 60.2, 59.7)
;;
(deftheme athens)
(let ((class '((class color) (min-colors 89)))
      (bg0 "#090909") ;; manually darkened
      (bg1 "#1c1b19")
      (bg2 "#242320")
      (bg3 "#2c2b28")
      (bg4 "#353430")
      (fg1 "#958f88")
      (fg2 "#7b766f")
      (fg3 "#615d58")
      (fg4 "#494642")
      (cursor "#4f643c")
      (modeline "#272f30")
      (active1 "#303d3e")
      (active2 "#2c3637")
      (inactive1 "#232829")
      (inactive2 "#1e2122")
      (clock12 "#a28e59")
      (clock01 "#899659")
      (clock02 "#5a9f58")
      (clock03 "#5c9c84")
      (clock04 "#5e9a97")
      (clock05 "#6098a8")
      (clock06 "#6592ca")
      (clock07 "#9c82d3")
      (clock08 "#d067d2")
      (clock09 "#d86aa7")
      (clock10 "#dc6e79")
      (clock11 "#bf8259")
      (hi1 "#b0b037")
      (hi2 "#3bbdac")
      (error "#c8575c");;
      (warning "#817c55")
      (success "#00b953")
      (var "#958f88")
      (func "#b65a52")
      (builtin "#729599")
      (keyword "#729599")
      (const "#729599")
      (comment "#536e6f")
      (str "#6e9976")
      (type "#a28c6d")
      (preprocessor "#5d9a91"))

  (custom-theme-set-faces

   'athens

   `(default           ((,class (:foreground ,fg1 :background ,bg0))))
   `(bold              ((,class (:weight bold))))
   `(bold-italic       ((,class (:weight bold :slant italic))))
   `(cursor            ((,class (:background ,cursor))))
   `(default-italic    ((,class (:italic t))))
   `(error             ((,class (:foreground ,error))))
   `(ffap              ((,class (:foreground ,fg4))))
   `(fringe            ((,class (:foreground ,fg4 :background ,bg0))))
   `(highlight         ((,class (:foreground ,fg3 :background ,bg3))))
   `(hl-line           ((,class (:background  ,bg2))))
   `(italic            ((,class (:slant italic))))
   `(link              ((,class (:foreground ,const :underline t))))
   `(minibuffer-prompt ((,class (:foreground ,hi2 :bold t))))
   `(region            ((,class (:foreground ,bg1 :background ,clock10))))
   `(shadow            ((,class (:foreground ,fg3))))
   `(success           ((,class (:foreground ,success))))
   `(underline         ((,class (:underline t))))
   `(vertical-border   ((,class (:foreground ,fg3))))
   `(warning           ((,class (:foreground ,warning))))
   `(match             ((,class (:foreground ,bg1 :background ,hi1))))
   `(widget-field      ((,class (:foreground ,hi1 :background ,bg2)))) ; M-x customize

   `(mmm-default-submode-face ((,class (:background ,bg0))))
   `(vhl/default-face ((,class (:foreground ,hi1 :background ,bg4))))


   `(mode-line           ((,class (:foreground ,bg1 :background ,clock11 :bold nil :box (:line-width 1 :color ,bg2 :style none)))))
   `(mode-line-buffer-id ((,class (:foreground ,bg0 :distant-foreground ,fg1 :background nil :bold nil))))
   `(mode-line-highlight ((,class (:background ,bg4)))) ;; ???
   `(mode-line-inactive  ((,class (:foreground ,fg4 :background ,bg0 :box (:line-width 1 :color ,bg2 :style none))))) ; ???

   `(spaceline-highlight-face ((,class (:foreground ,bg0 :background ,cursor))))
   `(powerline-active1 ((,class (:foreground ,fg1 :background ,active1))))
   `(powerline-active2 ((,class (:foreground ,fg1 :background ,active2))))

   `(powerline-inactive1 ((,class (:foreground ,fg4 :background ,inactive1))))
   `(powerline-inactive2 ((,class (:foreground ,fg4 :background ,inactive2))))

   `(font-lock-builtin-face       ((,class (:foreground ,builtin))))
   `(font-lock-comment-face       ((,class (:foreground ,comment))))
   `(font-lock-constant-face      ((,class (:foreground ,const))))
   `(font-lock-doc-face           ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func))))
   `(font-lock-keyword-face       ((,class (:foreground ,keyword))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))                 ;; fix
   `(font-lock-preprocessor-face  ((,class (:foreground ,preprocessor))))
   `(font-lock-reference-face     ((,class (:foreground ,const))))                 ;; fix
   `(font-lock-string-face        ((,class (:foreground ,str))))
   `(font-lock-type-face          ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face       ((,class (:foreground ,warning :background ,bg2))))

   ;; tree-sitter-hl-face:attribute
   ;; tree-sitter-hl-face:comment
   ;; tree-sitter-hl-face:constant
   ;; tree-sitter-hl-face:constant.builtin
   ;; tree-sitter-hl-face:constructor
   ;; tree-sitter-hl-face:doc
   ;; tree-sitter-hl-face:embedded
   ;; tree-sitter-hl-face:escape
   ;; tree-sitter-hl-face:function
   ;; tree-sitter-hl-face:function.builtin
   `(tree-sitter-hl-face:function.call ((,class (:foreground ,fg1))))
   ;; tree-sitter-hl-face:function.macro
   ;; tree-sitter-hl-face:function.special
   ;; tree-sitter-hl-face:keyword
   ;; tree-sitter-hl-face:label
   ;; tree-sitter-hl-face:method
   ;; tree-sitter-hl-face:method.call
   `(tree-sitter-hl-face:number ((,class (:foreground ,fg1))))
   `(tree-sitter-hl-face:operator ((,class (:foreground ,fg1))))
   `(tree-sitter-hl-face:property ((,class (:foreground ,fg1))))
   ;; tree-sitter-hl-face:property.definition
   ;; tree-sitter-hl-face:punctuation
   ;; tree-sitter-hl-face:punctuation.bracket
   ;; tree-sitter-hl-face:punctuation.delimiter
   ;; tree-sitter-hl-face:punctuation.special
   ;; tree-sitter-hl-face:string
   ;; tree-sitter-hl-face:string.special
   ;; tree-sitter-hl-face:tag
   ;; tree-sitter-hl-face:type
   ;; tree-sitter-hl-face:type.argument
   ;; tree-sitter-hl-face:type.builtin
   ;; tree-sitter-hl-face:type.parameter
   ;; tree-sitter-hl-face:type.super
   ;; tree-sitter-hl-face:variable
   ;; tree-sitter-hl-face:variable.builtin
   ;; tree-sitter-hl-face:variable.parameter
   `(tree-sitter-hl-face:variable.special ((,class (:foreground ,preprocessor))))

   ;; hi-yellow is used by highlight-thing
   `(hi-yellow ((,class (:foreground ,bg1 :background ,hi1))))

   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))

   `(ivy-current-match           ((,class (:foreground ,hi1 :background ,bg2))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,hi2))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,hi2))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,hi2))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,hi2))))

                                        ;`(ivy-confirm-face ((,class (:foreground ,hi2))))
                                        ;`(ivy-match-required-face ((,class (:foreground ,hi4))))
                                        ;`(ivy-virtual ((,class (:foreground ,hi4))))
                                        ;`(ivy-action ((,class (:foreground ,hi4))))

   `(company-tooltip            ((,class (:background ,bg3 :inherit default))))
   `(company-scrollbar-bg       ((,class (:background  ,bg3))))
   `(company-scrollbar-fg       ((,class (:background  ,fg2))))
   `(company-tooltip-annotation ((,class (:foreground ,warning)))) ; ???
   `(company-tooltip-common     ((,class (:foreground ,hi2))))
   `(company-tooltip-selection  ((,class (:foreground ,hi1 :background ,bg2))))
   `(company-preview-common     ((,class (:foreground ,hi1 :background ,bg2))))

   `(eshell-ls-archive    ((,class (:foreground ,fg3))))
   `(eshell-ls-backup     ((,class (:foreground ,fg2))))
   `(eshell-ls-clutter    ((,class (:foreground ,fg4))))
   `(eshell-ls-directory  ((,class (:foreground ,var))))
   `(eshell-ls-executable ((,class (:foreground ,func))))
   `(eshell-ls-missing    ((,class (:foreground ,error))))
   `(eshell-ls-product    ((,class (:foreground ,fg2))))
   `(eshell-ls-readonly   ((,class (:foreground ,const))))
   `(eshell-ls-special    ((,class (:foreground ,warning))))
   `(eshell-ls-symlink    ((,class (:foreground ,const))))
   `(eshell-ls-unreadable ((,class (:foreground ,error))))
   `(eshell-prompt        ((,class (:foreground ,var))))      ;; same as eshell-ls-directory

   `(undo-tree-visualizer-default-face       ((,class (:foreground ,comment))))
   `(undo-tree-visualizer-current-face       ((,class (:foreground ,hi1))))
   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,fg3))))
   `(undo-tree-visualizer-register-face      ((,class (:foreground ,hi2))))

   ;; flycheck-mode
   `(flycheck-error   ((,class (:underline (:style wave :color ,error)))))
   `(flycheck-info    ((,class (:underline (:style wave :color ,keyword))))) ;; fix
   `(flycheck-warning ((,class (:underline (:style wave :color ,warning)))))

   ;; flymake-mode
   `(flymake-warnline ((,class (:background ,bg3 :underline (:style wave :color ,warning)))))
   `(flymake-errline  ((,class (:background ,bg3 :underline (:style wave :color ,error)))))

   `(font-latex-bold-face                ((,class (:foreground ,type))))
   `(font-latex-italic-face              ((,class (:foreground ,fg3 :italic t))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords  ((,class (:foreground ,var))))
   `(font-latex-string-face              ((,class (:foreground ,str))))

   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from    ((,class (:foreground ,var))))
   `(gnus-header-name    ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))

   `(icompletep-determined ((,class :foreground ,builtin)))

   `(ido-first-match ((,class (:foreground ,keyword :bold t))))
   `(ido-only-match  ((,class (:foreground ,warning))))

   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string      ((,class (:foreground ,str))))

   `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))

   `(js2-error                    ((,class (:foreground ,error))))
   `(js2-external-variable        ((,class (:foreground ,var))))
   `(js2-function-param           ((,class (:foreground ,var))))
   `(js2-instance-member          ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name      ((,class (:foreground ,fg3))))
   `(js2-private-function-call    ((,class (:foreground ,fg2))))
   `(js2-warning                  ((,class (:foreground ,warning))))

   ;; `(haskell-definition-face ((,class (:foreground ,func))))
   ;; haskell-keyword-face
   ;; haskell-type-face
   ;; haskell-constructor-face
   ;; haskell-definition-face
   ;; haskell-operator-face
   ;; haskell-pragma-face
   ;; haskell-liquid-haskell-annotation-face
   ;; haskell-literate-comment-face
   ;; haskell-quasi-quote-face

   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))

   `(magit-branch                 ((,class (:foreground ,const :weight bold))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
   `(magit-diff-file-header       ((,class (:foreground ,fg2 :background ,bg3))))
   `(magit-diffstat-added         ((,class (:foreground ,type))))
   `(magit-diffstat-removed       ((,class (:foreground ,var))))
   `(magit-hash                   ((,class (:foreground ,fg2))))
   `(magit-hunk-heading           ((,class (:background ,bg3))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-item-highlight         ((,class (:background ,bg3))))
   `(magit-log-author             ((,class (:foreground ,fg3))))
   `(magit-process-ng             ((,class (:foreground ,warning :weight bold))))
   `(magit-process-ok             ((,class (:foreground ,func :weight bold))))
   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight      ((,class (:background ,bg2))))

   `(org-agenda-date           ((,class (:foreground ,var :height 1.1 ))))
   `(org-agenda-date-today     ((,class (:weight bold :foreground ,keyword :height 1.4))))
   `(org-agenda-date-weekend   ((,class (:weight normal :foreground ,fg4))))
   `(org-agenda-structure      ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
   `(org-block                 ((,class (:foreground ,fg1 :background ,bg0))))
   `(org-block-begin-line      ((,class (:foreground ,fg4 :background ,bg1))))
   `(org-block-end-line        ((,class (:foreground ,fg4 :background ,bg1))))
   `(org-code                  ((,class (:foreground ,fg2))))
   `(org-date                  ((,class (:underline t :foreground ,var) )))
   `(org-document-info-keyword ((,class (:foreground ,func))))
   `(org-done                  ((,class (:bold t :foreground ,bg4))))
   `(org-ellipsis              ((,class (:foreground ,builtin))))
   `(org-footnote              ((,class (:underline t :foreground ,fg4))))
   `(org-hide                  ((,class (:foreground ,fg4))))
   `(org-level-1               ((,class (:bold nil :foreground ,clock12))))
   `(org-level-2               ((,class (:bold nil :foreground ,clock02))))
   `(org-level-3               ((,class (:bold nil :foreground ,clock04))))
   `(org-level-4               ((,class (:bold nil :foreground ,clock06))))
   `(org-level-5               ((,class (:bold nil :foreground ,clock08))))
   `(org-level-6               ((,class (:bold nil :foreground ,clock10))))
   `(org-link                  ((,class (:underline t :foreground ,type ))))
   `(org-quote                 ((,class (:inherit org-block :slant italic))))
   `(org-scheduled             ((,class (:foreground ,type))))
   `(org-sexp-date             ((,class (:foreground ,fg4))))
   `(org-special-keyword       ((,class (:foreground ,func))))
   `(org-table                 ((,class (:foreground ,clock05 :background ,bg1 ))))
   `(org-todo                  ((,class (:foreground ,keyword :bold t))))
   `(org-verbatim              ((,class (:foreground ,fg4 :underline t :slant italic))))
   `(org-verse                 ((,class (:inherit org-block :slant italic))))
   `(org-warning               ((,class (:underline t :foreground ,warning))))

   `(pulse-highlight-start-face ((,class (:background ,cursor))))

   `(rainbow-delimiters-depth-1-face   ((,class :foreground ,clock12)))
   `(rainbow-delimiters-depth-2-face   ((,class :foreground ,clock01)))
   `(rainbow-delimiters-depth-3-face   ((,class :foreground ,clock02)))
   `(rainbow-delimiters-depth-4-face   ((,class :foreground ,clock03)))
   `(rainbow-delimiters-depth-5-face   ((,class :foreground ,clock04)))
   `(rainbow-delimiters-depth-6-face   ((,class :foreground ,clock05)))
   `(rainbow-delimiters-depth-7-face   ((,class :foreground ,clock06)))
   `(rainbow-delimiters-depth-8-face   ((,class :foreground ,clock07)))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))

   `(show-paren-match-face ((,class (:background ,warning))))

   `(slime-repl-inputed-output-face ((,class (:foreground ,type))))

   `(sp-show-pair-match-face ((,class (:background ,active2))))
   `(sp-show-pair-mismatch-face ((,class (:background ,error))))

   `(vterm-color-default ((,class (:foreground ,fg1 :background ,bg0))))
   `(vterm-color-black ((,class (:foreground ,bg2 :background ,bg2))))
   `(vterm-color-red ((,class (:foreground ,clock10 :background ,clock10))))
   `(vterm-color-green ((,class (:foreground ,clock02 :background ,clock02))))
   `(vterm-color-yellow ((,class (:foreground ,clock12 :background ,clock12))))
   `(vterm-color-blue ((,class (:foreground ,clock06 :background ,clock06))))
   `(vterm-color-magenta ((,class (:foreground ,clock07 :background ,clock07))))
   `(vterm-color-cyan ((,class (:foreground ,clock04 :background ,clock04))))
   `(vterm-color-white ((,class (:foreground ,fg1 :background ,fg1))))

   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   ;; `(whitespace-trailing ((,class (:foreground ,red :inverse-video t :underline nil))))
   ;; `(whitespace-space-after-tab ((,class (:foreground ,red :inverse-video t :underline nil))))
   ;; `(whitespace-space-before-tab ((,class (:foreground ,red :inverse-video t :underline nil))))
   ;; `(whitespace-empty ((,class (:foreground ,red :inverse-video t :underline nil))))
   ;; `(whitespace-line ((,class (:background nil :foreground ,red))))
   ;; `(whitespace-indentation ((,class (:background nil :foreground ,aqua))))
   ;; `(whitespace-space ((,class (:background nil :foreground ,selection))))
   ;; `(whitespace-newline ((,class (:background nil :foreground ,selection))))
   ;; `(whitespace-tab ((,class (:background nil :foreground ,selection))))
   ;; `(whitespace-hspace ((,class (:background nil :foreground ,selection))))


   `(undo-tree-visualizer-current-face    ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face    ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-register-face   ((,class :foreground ,keyword)))
   `(undo-tree-visualizer-register-face   ((,class :foreground ,type)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))

   `(web-mode-builtin-face         ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face         ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face        ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-doctype-face         ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face   ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-html-attr-name-face  ((,class (:foreground ,func))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
   `(web-mode-html-tag-face        ((,class (:foreground ,builtin))))
   `(web-mode-keyword-face         ((,class (:foreground ,keyword))))
   `(web-mode-string-face          ((,class (:foreground ,str))))
   `(web-mode-type-face            ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-warning-face         ((,class (:inherit ,font-lock-warning-face))))
   ))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'athens)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; athens-theme.el ends here
