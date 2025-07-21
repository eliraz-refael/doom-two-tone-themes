;;; doom-burgundy-rose-theme.el --- A luxurious burgundy and rose gold dark theme -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Author: Eliraz Kedmi <eliraz.kedmi@gmail.com>
;; Maintainer: Eliraz Kedmi <eliraz.kedmi@gmail.com>
;; Version: 1.0.0
;; Package-Requires: ((emacs "25.1") (doom-themes "2.2.1"))
;; URL: https://github.com/eliraz-refael/doom-two-tone-themes
;; Keywords: faces, theme, dark, light, two-tone, doom
;;
;;; Commentary:
;;
;; A luxurious dark theme using deep burgundy and elegant rose gold
;; with soft pink accents for strings - sophisticated, rich, and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-burgundy-rose-theme nil
  "Options for the `doom-burgundy-rose' theme."
  :group 'doom-themes)

(defcustom doom-burgundy-rose-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-burgundy-rose-theme
  :type 'boolean)

(defcustom doom-burgundy-rose-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-burgundy-rose-theme
  :type 'boolean)

(defcustom doom-burgundy-rose-comment-bg doom-burgundy-rose-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-burgundy-rose-theme
  :type 'boolean)

(defcustom doom-burgundy-rose-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-burgundy-rose-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-burgundy-rose
  "A luxurious dark theme with deep burgundy, rose gold, and soft pink accents."

  ;; name        default   256           16
  ((bg         '("#1a0f14" "black"       "black"        )) ; Deep burgundy-black background
   (fg         '("#f5e6e8" "#bfbfbf"     "brightwhite"  )) ; Warm rose-tinted white

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#221419" "black"       "black"        )) ; Slightly lighter burgundy
   (fg-alt     '("#c9a9ae" "#2d2d2d"     "white"        )) ; Dimmer rose-gray

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg.
   (base0      '("#0f0a0c" "black"       "black"        )) ; Darkest burgundy-black
   (base1      '("#1f1214" "#1e1e1e"     "brightblack"  )) ; Very dark burgundy
   (base2      '("#2d1a20" "#2e2e2e"     "brightblack"  )) ; Dark burgundy
   (base3      '("#3d252c" "#262626"     "brightblack"  )) ; Medium-dark burgundy
   (base4      '("#4d3339" "#3f3f3f"     "brightblack"  )) ; Medium burgundy-gray
   (base5      '("#6b4c54" "#525252"     "brightblack"  )) ; Light burgundy-gray
   (base6      '("#8a6b73" "#6b6b6b"     "brightblack"  )) ; Lighter burgundy-gray
   (base7      '("#b59ca4" "#979797"     "brightblack"  )) ; Light rose-gray
   (base8      '("#f0e1e5" "#dfdfdf"     "white"        )) ; Very light rose

   ;; Burgundy palette - our primary color
   (burgundy-dark  '("#6b1e3a" "#6b1e3a"   "red"          )) ; IMPROVED: Lighter dark burgundy for better contrast
   (burgundy       '("#9f2d55" "#9f2d55"   "brightred"    )) ; IMPROVED: Brighter medium burgundy
   (burgundy-medium'("#c2185b" "#c2185b"   "brightred"    )) ; IMPROVED: Much brighter burgundy
   (burgundy-light '("#e91e63" "#e91e63"   "brightred"    )) ; IMPROVED: Very bright burgundy

   ;; Rose gold palette - our secondary color (FIXED: No more yellow tones)
   (rose-dark      '("#c2185b" "#c2185b"   "red"          )) ; FIXED: Rose-burgundy instead of gold
   (rose           '("#e91e63" "#e91e63"   "brightred"    )) ; FIXED: Bright rose instead of gold
   (rose-medium    '("#f48fb1" "#f48fb1"   "brightred"    )) ; FIXED: Light rose instead of gold
   (rose-light     '("#ffc1cc" "#ffc1cc"   "brightred"    )) ; FIXED: Very light rose instead of gold

   ;; Soft pink palette for strings - our accent color
   (pink-dark      '("#d81b60" "#d81b60"   "magenta"      )) ; IMPROVED: Brighter dark pink
   (pink           '("#ff80ab" "#ff80ab"   "brightmagenta")) ; IMPROVED: Much brighter pink
   (pink-light     '("#ffa1cc" "#ffa1cc"   "brightmagenta")) ; IMPROVED: Very bright soft pink
   (pink-muted     '("#e1a3c7" "#e1a3c7"   "magenta"      )) ; IMPROVED: Brighter muted pink

   ;; IMPROVED: Better diff colors using only rose-burgundy-pink palette
   (diff-added-bg    '("#2a1f2a" "#2a1f2a"   "magenta"      )) ; Dark rose-burgundy background
   (diff-added-fg    '("#ffb3d9" "#ffb3d9"   "brightmagenta")) ; Bright rose-pink text
   (diff-removed-bg  '("#3d1a20" "#3d1a20"   "red"          )) ; Burgundy-tinted red background
   (diff-removed-fg  '("#ff9999" "#ff9999"   "brightred"    )) ; Bright light red text
   (diff-changed-bg  '("#2d1a2a" "#2d1a2a"   "magenta"      )) ; Rose-burgundy background
   (diff-changed-fg  '("#e699cc" "#e699cc"   "brightmagenta")) ; Medium rose-pink text

   (grey       base4)
   (red        burgundy-medium)   ; FIXED: Added back the red definition
   (orange     rose-medium)       ; FIXED: Using rose instead of yellow-toned rose
   (green      pink-light)        ; Using bright pink for green elements
   (teal       rose)              ; FIXED: Using rose instead of yellow-toned rose
   (yellow     rose-light)        ; FIXED: Using light rose instead of gold
   (blue       burgundy)          ; Using medium burgundy for blue
   (dark-blue  burgundy-dark)     ; Using improved dark burgundy
   (magenta    burgundy-light)    ; CHANGED: Using very bright burgundy for magenta
   (violet     pink-light)        ; Using bright pink for violet
   (cyan       rose)              ; FIXED: Using rose instead of gold
   (dark-cyan  rose-dark)         ; FIXED: Using rose-burgundy instead of gold

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      burgundy-light)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      base3)
   (builtin        burgundy-light)  ; CHANGED: Using bright burgundy
   (comments       (if doom-burgundy-rose-brighter-comments pink-muted (doom-lighten pink-muted 0.1))) ; IMPROVED: Brighter comments
   (doc-comments   (doom-lighten (if doom-burgundy-rose-brighter-comments pink-muted (doom-lighten pink-muted 0.1)) 0.2)) ; IMPROVED: Much brighter doc comments
   (constants      rose-medium)     ; FIXED: Using rose instead of gold
   (functions      burgundy-light)  ; CHANGED: Using bright burgundy
   (keywords       rose)            ; FIXED: Using rose instead of gold
   (methods        rose-dark)       ; FIXED: Using rose-burgundy instead of gold
   (operators      base7)
   (type           rose-medium)     ; FIXED: Using rose instead of gold
   (strings        pink)            ; Using improved bright pink
   (variables      (doom-lighten burgundy 0.6)) ; IMPROVED: Much lighter variables
   (numbers        rose-light)      ; FIXED: Using light rose instead of gold
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          burgundy-light)  ; CHANGED: Using bright burgundy for better visibility
   (warning        rose-medium)     ; CHANGED: Using bright rose gold
   (success        pink-light)      ; Using bright pink
   (vc-modified    rose-medium)     ; CHANGED: Using bright rose gold
   (vc-added       pink-light)      ; Using bright pink
   (vc-deleted     burgundy-light)  ; CHANGED: Using bright burgundy

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base5)
   (modeline-bg              (if doom-burgundy-rose-brighter-modeline
                                 (doom-darken burgundy 0.45)
                               (doom-darken bg-alt 0.1)))
   (modeline-bg-alt          (if doom-burgundy-rose-brighter-modeline
                                 (doom-darken burgundy 0.475)
                               `(,(doom-darken (car bg-alt) 0.15) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when doom-burgundy-rose-padded-modeline
      (if (integerp doom-burgundy-rose-padded-modeline) doom-burgundy-rose-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground burgundy-light) ; CHANGED: Using bright burgundy
   ((font-lock-comment-face &override)
    :background (if doom-burgundy-rose-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-burgundy-rose-brighter-modeline base8 highlight))

   ;;;; MUCH IMPROVED: Better diff colors for excellent readability
   (diff-added :background diff-added-bg :foreground diff-added-fg :weight 'normal)
   (diff-removed :background diff-removed-bg :foreground diff-removed-fg :weight 'normal)
   (diff-changed :background diff-changed-bg :foreground diff-changed-fg :weight 'normal)
   (diff-header :foreground rose-light :background base2 :weight 'bold)
   (diff-file-header :foreground base8 :background base3 :weight 'bold)
   (diff-hunk-header :foreground rose-medium :background base2 :weight 'bold)

   ;;;; MUCH IMPROVED: Magit diff with excellent readability
   (magit-diff-added :background diff-added-bg :foreground diff-added-fg :extend t)
   (magit-diff-added-highlight :background (doom-lighten diff-added-bg 0.3) :foreground diff-added-fg :weight 'bold :extend t)
   (magit-diff-removed :background diff-removed-bg :foreground diff-removed-fg :extend t)
   (magit-diff-removed-highlight :background (doom-lighten diff-removed-bg 0.3) :foreground diff-removed-fg :weight 'bold :extend t)
   (magit-diff-context :foreground base6)
   (magit-diff-context-highlight :background base2 :foreground base7)
   (magit-diff-hunk-heading :background base2 :foreground rose-medium :weight 'bold)
   (magit-diff-hunk-heading-highlight :background base3 :foreground rose-light :weight 'bold)

   ;; Additional magit improvements
   (magit-diff-lines-heading :background burgundy-medium :foreground base8 :weight 'bold)
   (magit-diff-file-heading :background base2 :foreground rose-light :weight 'bold)
   (magit-diff-file-heading-highlight :background base3 :foreground rose-light :weight 'bold)
   (magit-section-heading :foreground burgundy-light :weight 'bold)
   (magit-section-highlight :background base2)

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground burgundy-light) ; CHANGED: Using bright burgundy
   (css-property             :foreground rose)           ; CHANGED: Using brighter rose
   (css-selector             :foreground burgundy-medium) ; CHANGED: Using brighter burgundy
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-burgundy-rose-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground rose :weight 'bold) ; CHANGED: Using brighter rose
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base1)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base0 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground rose) ; CHANGED: Using brighter rose
   ;;;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground burgundy-light) ; CHANGED: Using bright burgundy
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground burgundy-light) ; CHANGED: Using bright burgundy
   (rjsx-attr :foreground rose)          ; CHANGED: Using brighter rose
   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-alt))))

  ;;;; Base theme variable overrides
  ())

;;; doom-burgundy-rose-theme.el ends here
