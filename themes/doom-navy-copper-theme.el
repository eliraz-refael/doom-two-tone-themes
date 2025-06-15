;;; doom-navy-copper-theme.el --- A sophisticated navy blue and copper dark theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A sophisticated dark theme using deep navy blue and warm copper
;; with coral accents for strings - modern, elegant, and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-navy-copper-theme nil
  "Options for the `doom-navy-copper' theme."
  :group 'doom-themes)

(defcustom doom-navy-copper-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-navy-copper-theme
  :type 'boolean)

(defcustom doom-navy-copper-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-navy-copper-theme
  :type 'boolean)

(defcustom doom-navy-copper-comment-bg doom-navy-copper-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-navy-copper-theme
  :type 'boolean)

(defcustom doom-navy-copper-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-navy-copper-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-navy-copper
  "A sophisticated dark theme with navy blue, copper, and coral accents."
  :background-mode 'dark

  ;; name        default   256           16
  ((bg         '("#0f1419" "#0f1419"     "black"        )) ; Deep dark blue-grey
   (fg         '("#e6e1dc" "#e6e1dc"     "white"        )) ; Warm off-white

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#1a1f2e" "#1a1f2e"     "black"        )) ; Slightly lighter dark blue
   (fg-alt     '("#b8b3ae" "#b8b3ae"     "brightwhite"  )) ; Muted off-white

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is dark and fg is
   ;; light, then base0 should be darker and base8 should be brighter.
   (base0      '("#0a0e13" "#0a0e13"     "black"        )) ; Very dark blue-black
   (base1      '("#151b26" "#151b26"     "black"        )) ; Dark blue-grey
   (base2      '("#1f2633" "#1f2633"     "brightblack"  )) ; Medium-dark blue-grey
   (base3      '("#2a3441" "#2a3441"     "brightblack"  )) ; Medium blue-grey
   (base4      '("#3e4c5e" "#3e4c5e"     "brightblack"  )) ; Light blue-grey
   (base5      '("#5c6b7d" "#5c6b7d"     "brightblack"  )) ; Lighter blue-grey
   (base6      '("#7a8a9b" "#7a8a9b"     "brightwhite"  )) ; Light grey-blue
   (base7      '("#9aa9ba" "#9aa9ba"     "brightwhite"  )) ; Very light grey-blue
   (base8      '("#f0f0f0" "#f0f0f0"     "white"        )) ; Very light grey

   ;; Navy blue palette - our primary color
   (navy-dark      '("#1e3a5f" "#1e3a5f"   "blue"         )) ; Deep navy
   (navy           '("#2e5984" "#2e5984"   "brightblue"   )) ; Medium navy
   (navy-medium    '("#4682b4" "#4682b4"   "brightblue"   )) ; Steel blue
   (navy-light     '("#6fa8dc" "#6fa8dc"   "brightcyan"   )) ; Light steel blue

   ;; Copper palette - our secondary color
   (copper-dark    '("#8b4513" "#8b4513"   "red"          )) ; Dark copper/saddle brown
   (copper         '("#cd853f" "#cd853f"   "yellow"       )) ; Peru/copper
   (copper-medium  '("#daa520" "#daa520"   "brightyellow" )) ; Goldenrod
   (copper-light   '("#f4d03f" "#f4d03f"   "brightyellow" )) ; Light gold

   ;; Coral palette for strings - our accent color
   (coral-dark     '("#cc5500" "#cc5500"   "red"          )) ; Dark coral/orange-red
   (coral          '("#ff7f7f" "#ff7f7f"   "brightred"    )) ; Light coral
   (coral-light    '("#ffb3b3" "#ffb3b3"   "brightred"    )) ; Very light coral

   (grey       base5)
   (red        coral-dark)    ; Using dark coral for "red" elements
   (orange     copper)        ; Using copper for "orange" elements
   (green      navy-light)    ; Using light navy for "green" elements
   (teal       navy-medium)   ; Using medium navy for "teal" elements
   (yellow     copper-light)  ; Using light copper for "yellow" elements
   (blue       navy)          ; Using navy for "blue" elements
   (dark-blue  navy-dark)     ; Using dark navy for "dark-blue" elements
   (magenta    coral)         ; Using coral for "magenta" elements
   (violet     coral-light)   ; Using light coral for "violet" elements
   (cyan       navy-light)    ; Using light navy for "cyan" elements
   (dark-cyan  navy-dark)     ; Using dark navy for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      navy-medium)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        navy-medium)
   (comments       (if doom-navy-copper-brighter-comments base6 base5))
   (doc-comments   (doom-lighten (if doom-navy-copper-brighter-comments base6 base5) 0.25))
   (constants      copper-light)
   (functions      navy-medium)
   (keywords       navy-light)
   (methods        copper)
   (operators      base7)
   (type           copper-medium)
   (strings        coral)
   (variables      (doom-lighten navy 0.3))
   (numbers        copper-light)
   (region         base3)
   (error          coral-dark)
   (warning        copper)
   (success        navy-light)
   (vc-modified    copper)
   (vc-added       navy-light)
   (vc-deleted     coral-dark)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-navy-copper-brighter-modeline
                                 (doom-darken navy 0.3)
                               base2))
   (modeline-bg-alt          (if doom-navy-copper-brighter-modeline
                                 (doom-darken navy 0.2)
                               base3))
   (modeline-bg-inactive     base1)
   (modeline-bg-inactive-alt base2)

   (-modeline-pad
    (when doom-navy-copper-padded-modeline
      (if (integerp doom-navy-copper-padded-modeline) doom-navy-copper-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground navy-light)
   ((font-lock-comment-face &override)
    :background (if doom-navy-copper-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-navy-copper-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground navy-medium)
   (css-property             :foreground copper)
   (css-selector             :foreground navy-light)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-navy-copper-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground copper :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base6)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base8 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground copper)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground navy-light)
   ((markdown-code-face &override) :background (doom-lighten base1 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground navy-medium)
   (rjsx-attr :foreground copper)
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

;;; doom-navy-copper-theme.el ends here
