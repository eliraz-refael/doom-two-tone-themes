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
   (burgundy-dark  '("#4a1e2b" "#4a1e2b"   "red"          )) ; Dark burgundy
   (burgundy       '("#722F37" "#722F37"   "brightred"    )) ; Medium burgundy
   (burgundy-medium'("#8B1538" "#8B1538"   "brightred"    )) ; Bright burgundy
   (burgundy-light '("#a64d79" "#a64d79"   "brightred"    )) ; Light burgundy

   ;; Rose gold palette - our secondary color
   (rose-dark      '("#b8860b" "#b8860b"   "yellow"       )) ; Dark rose gold
   (rose           '("#d4a574" "#d4a574"   "brightyellow" )) ; Medium rose gold
   (rose-medium    '("#e8b4b8" "#e8b4b8"   "brightyellow" )) ; Light rose gold
   (rose-light     '("#f2c2c6" "#f2c2c6"   "brightyellow" )) ; Very light rose gold

   ;; Soft pink palette for strings - our accent color
   (pink-dark      '("#c2185b" "#c2185b"   "magenta"      )) ; Dark pink
   (pink           '("#ffb6c1" "#ffb6c1"   "brightmagenta")) ; Light pink
   (pink-light     '("#ffc0cb" "#ffc0cb"   "brightmagenta")) ; Soft pink
   (pink-muted     '("#d8a7ca" "#d8a7ca"   "magenta"      )) ; Muted pink for comments

   (grey       base4)
   (red        burgundy-dark)   ; Using dark burgundy for "red" elements
   (orange     rose-dark)       ; Using dark rose gold for "orange" elements
   (green      pink-light)      ; Using light pink for "green" elements
   (teal       rose-medium)     ; Using rose gold for "teal" elements
   (yellow     rose-light)      ; Using light rose gold for "yellow" elements
   (blue       burgundy)        ; Using burgundy for "blue" elements
   (dark-blue  burgundy-dark)   ; Using dark burgundy for "dark-blue" elements
   (magenta    burgundy-light)  ; Using light burgundy for "magenta" elements
   (violet     pink-light)      ; Using light pink for "violet" elements
   (cyan       rose)            ; Using rose gold for "cyan" elements
   (dark-cyan  rose-dark)       ; Using dark rose gold for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      burgundy-light)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      base3)
   (builtin        burgundy-light)
   (comments       (if doom-burgundy-rose-brighter-comments pink-muted (doom-darken pink-muted 0.15)))
   (doc-comments   (doom-lighten (if doom-burgundy-rose-brighter-comments pink-muted (doom-darken pink-muted 0.15)) 0.15))
   (constants      rose-light)
   (functions      burgundy-light)
   (keywords       burgundy-medium)
   (methods        rose)
   (operators      base7)
   (type           rose-medium)
   (strings        pink)
   (variables      (doom-lighten burgundy 0.4))
   (numbers        rose-light)
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          burgundy-dark)
   (warning        rose-dark)
   (success        pink-light)
   (vc-modified    rose-dark)
   (vc-added       pink-light)
   (vc-deleted     burgundy-dark)

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
   ((line-number-current-line &override) :foreground burgundy-light)
   ((font-lock-comment-face &override)
    :background (if doom-burgundy-rose-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-burgundy-rose-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground burgundy-light)
   (css-property             :foreground rose)
   (css-selector             :foreground burgundy-medium)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-burgundy-rose-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground rose :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base1)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base0 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground rose)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground burgundy-light)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground burgundy-light)
   (rjsx-attr :foreground rose)
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
