;;; doom-teal-terracotta-theme.el --- A sophisticated teal and terracotta light theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A sophisticated light theme using deep teal and warm terracotta
;; with soft lavender accents for strings - modern, elegant, and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-teal-terracotta-theme nil
  "Options for the `doom-teal-terracotta' theme."
  :group 'doom-themes)

(defcustom doom-teal-terracotta-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-teal-terracotta-theme
  :type 'boolean)

(defcustom doom-teal-terracotta-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-teal-terracotta-theme
  :type 'boolean)

(defcustom doom-teal-terracotta-comment-bg doom-teal-terracotta-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-teal-terracotta-theme
  :type 'boolean)

(defcustom doom-teal-terracotta-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-teal-terracotta-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-teal-terracotta
  "A sophisticated light theme with deep teal, terracotta, and lavender accents."
  :background-mode 'light

  ;; name        default   256           16
  ((bg         '("#faf8f5" "white"       "white"        )) ; Warm cream background
   (fg         '("#2c2c2c" "#2c2c2c"     "black"        )) ; Dark charcoal for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#f5f2ed" "brightwhite" "brightwhite"  )) ; Slightly darker cream
   (fg-alt     '("#6b6b6b" "#6b6b6b"     "brightblack"  )) ; Medium grey

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, then base0 should be white and base8 should be black.
   (base0      '("#ffffff" "white"       "white"        )) ; Pure white
   (base1      '("#f8f5f0" "#f8f5f0"     "brightwhite"  )) ; Very light cream
   (base2      '("#ede8e0" "#ede8e0"     "white"        )) ; Light cream
   (base3      '("#e2dbd0" "#e2dbd0"     "white"        )) ; Medium-light cream
   (base4      '("#d7cec0" "#d7cec0"     "brightwhite"  )) ; Medium cream
   (base5      '("#a69b88" "#a69b88"     "brightblack"  )) ; Light brown-grey
   (base6      '("#8b7d6b" "#8b7d6b"     "brightblack"  )) ; Medium brown-grey
   (base7      '("#5a5248" "#5a5248"     "black"        )) ; Dark brown-grey
   (base8      '("#1a1a1a" "#1a1a1a"     "black"        )) ; Very dark grey

   ;; Teal palette - our primary color
   (teal-dark      '("#0d4d4d" "#0d4d4d"   "cyan"         )) ; Very dark teal
   (teal           '("#1a6666" "#1a6666"   "brightcyan"   )) ; Dark teal
   (teal-medium    '("#2d8080" "#2d8080"   "brightcyan"   )) ; Medium teal
   (teal-light     '("#4d9999" "#4d9999"   "brightcyan"   )) ; Light teal

   ;; Terracotta palette - our secondary color
   (terra-dark     '("#8b4513" "#8b4513"   "red"          )) ; Dark terracotta
   (terra          '("#b5651d" "#b5651d"   "brightred"    )) ; Medium terracotta
   (terra-medium   '("#cd853f" "#cd853f"   "yellow"       )) ; Medium-light terracotta
   (terra-light    '("#deb887" "#deb887"   "brightyellow" )) ; Light terracotta

   ;; Lavender palette for strings - our complement color
   (lavender-dark  '("#6b5b95" "#6b5b95"   "magenta"      )) ; Dark lavender
   (lavender       '("#8b7bb8" "#8b7bb8"   "brightmagenta")) ; Medium lavender
   (lavender-light '("#a999d9" "#a999d9"   "brightmagenta")) ; Light lavender

   (grey       base5)
   (red        terra-dark)    ; Using dark terracotta for "red" elements
   (orange     terra)         ; Using terracotta for "orange" elements
   (green      teal-light)    ; Using light teal for "green" elements
   (teal       teal-medium)   ; Using medium teal for "teal" elements
   (yellow     terra-light)   ; Using light terracotta for "yellow" elements
   (blue       teal)          ; Using teal for "blue" elements
   (dark-blue  teal-dark)     ; Using dark teal for "dark-blue" elements
   (magenta    lavender)      ; Using lavender for "magenta" elements
   (violet     lavender-light); Using light lavender for "violet" elements
   (cyan       teal-light)    ; Using light teal for "cyan" elements
   (dark-cyan  teal-dark)     ; Using dark teal for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      teal-medium)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        teal)
   (comments       (if doom-teal-terracotta-brighter-comments base6 base5))
   (doc-comments   (doom-lighten (if doom-teal-terracotta-brighter-comments base6 base5) 0.25))
   (constants      terra-light)
   (functions      teal)
   (keywords       teal-dark)
   (methods        terra)
   (operators      base7)
   (type           terra-medium)
   (strings        lavender)
   (variables      (doom-darken teal 0.3))
   (numbers        terra-light)
   (region         base4)
   (error          terra-dark)
   (warning        terra)
   (success        teal-light)
   (vc-modified    terra)
   (vc-added       teal-light)
   (vc-deleted     terra-dark)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-teal-terracotta-brighter-modeline
                                 (doom-lighten teal 0.7)
                               base2))
   (modeline-bg-alt          (if doom-teal-terracotta-brighter-modeline
                                 (doom-lighten teal 0.75)
                               base3))
   (modeline-bg-inactive     base1)
   (modeline-bg-inactive-alt base2)

   (-modeline-pad
    (when doom-teal-terracotta-padded-modeline
      (if (integerp doom-teal-terracotta-padded-modeline) doom-teal-terracotta-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground teal)
   ((font-lock-comment-face &override)
    :background (if doom-teal-terracotta-comment-bg (doom-darken bg 0.03) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-teal-terracotta-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground teal)
   (css-property             :foreground terra)
   (css-selector             :foreground teal-dark)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-teal-terracotta-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground terra :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base4 :foreground base6)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base8 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground terra)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground teal)
   ((markdown-code-face &override) :background (doom-darken base2 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground teal)
   (rjsx-attr :foreground terra)
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

;;; doom-teal-terracotta-theme.el ends here
