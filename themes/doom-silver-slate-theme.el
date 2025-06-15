;;; doom-silver-slate-theme.el --- A sophisticated silver and slate monotone dark theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A sophisticated monotone dark theme using silver and slate blue-gray
;; with seafoam teal accents for strings - elegant, modern, and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-silver-slate-theme nil
  "Options for the `doom-silver-slate' theme."
  :group 'doom-themes)

(defcustom doom-silver-slate-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-silver-slate-theme
  :type 'boolean)

(defcustom doom-silver-slate-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-silver-slate-theme
  :type 'boolean)

(defcustom doom-silver-slate-comment-bg doom-silver-slate-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-silver-slate-theme
  :type 'boolean)

(defcustom doom-silver-slate-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-silver-slate-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-silver-slate
  "A sophisticated monotone dark theme with silver, slate, and seafoam teal accents."
  :background-mode 'dark

  ;; name        default   256           16
  ((bg         '("#0d1117" "#0d1117"     "black"        )) ; Very dark blue-gray
   (fg         '("#e6edf3" "#e6edf3"     "white"        )) ; Soft silver-white

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#161b22" "#161b22"     "black"        )) ; Slightly lighter dark gray
   (fg-alt     '("#b1bac4" "#b1bac4"     "brightwhite"  )) ; Muted silver

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg.
   (base0      '("#010409" "#010409"     "black"        )) ; Almost black
   (base1      '("#1c2128" "#1c2128"     "black"        )) ; Dark slate
   (base2      '("#262c36" "#262c36"     "brightblack"  )) ; Medium-dark slate
   (base3      '("#373e47" "#373e47"     "brightblack"  )) ; Medium slate
   (base4      '("#4d5566" "#4d5566"     "brightblack"  )) ; Light slate
   (base5      '("#656d76" "#656d76"     "brightblack"  )) ; Lighter slate
   (base6      '("#818991" "#818991"     "brightwhite"  )) ; Light gray-blue
   (base7      '("#adbac7" "#adbac7"     "brightwhite"  )) ; Very light gray-blue
   (base8      '("#f0f6fc" "#f0f6fc"     "white"        )) ; Very light silver

   ;; Silver palette - our primary color
   (silver-dark    '("#2c3e50" "#2c3e50"   "brightblack"  )) ; Dark charcoal-silver
   (silver         '("#566573" "#566573"   "brightblack"  )) ; Medium silver-gray
   (silver-medium  '("#7f8c8d" "#7f8c8d"   "brightwhite"  )) ; Light silver-gray
   (silver-light   '("#bdc3c7" "#bdc3c7"   "brightwhite"  )) ; Bright silver

   ;; Blue-gray palette - our secondary color
   (slate-dark     '("#34495e" "#34495e"   "brightblack"  )) ; Deep slate
   (slate          '("#5d6d7e" "#5d6d7e"   "brightblack"  )) ; Medium slate
   (slate-medium   '("#85929e" "#85929e"   "brightwhite"  )) ; Light slate
   (slate-light    '("#aeb6bf" "#aeb6bf"   "brightwhite"  )) ; Very light slate

   ;; Seafoam teal palette for strings - our accent color
   (teal-dark      '("#148a73" "#148a73"   "cyan"         )) ; Dark seafoam
   (teal           '("#20b2aa" "#20b2aa"   "brightcyan"   )) ; Seafoam teal
   (teal-light     '("#4dd0e1" "#4dd0e1"   "brightcyan"   )) ; Light seafoam
   (teal-muted     '("#6b9b8f" "#6b9b8f"   "cyan"         )) ; Muted seafoam for comments

   (grey       base5)
   (red        silver-dark)   ; Using dark silver for "red" elements
   (orange     slate)         ; Using slate for "orange" elements
   (green      teal-light)    ; Using light teal for "green" elements
   (teal       teal)          ; Using teal for "teal" elements
   (yellow     silver-light)  ; Using light silver for "yellow" elements
   (blue       slate-medium)  ; Using medium slate for "blue" elements
   (dark-blue  slate-dark)    ; Using dark slate for "dark-blue" elements
   (magenta    silver-medium) ; Using medium silver for "magenta" elements
   (violet     slate-light)   ; Using light slate for "violet" elements
   (cyan       teal-light)    ; Using light teal for "cyan" elements
   (dark-cyan  teal-dark)     ; Using dark teal for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      slate-medium)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        slate-medium)
   (comments       (if doom-silver-slate-brighter-comments teal-muted (doom-darken teal-muted 0.2)))
   (doc-comments   (doom-lighten (if doom-silver-slate-brighter-comments teal-muted (doom-darken teal-muted 0.2)) 0.15))
   (constants      silver-light)
   (functions      slate-medium)
   (keywords       slate-light)
   (methods        silver-medium)
   (operators      base7)
   (type           silver-medium)
   (strings        teal)
   (variables      (doom-lighten slate 0.3))
   (numbers        silver-light)
   (region         base3)
   (error          silver-dark)
   (warning        slate)
   (success        teal-light)
   (vc-modified    slate)
   (vc-added       teal-light)
   (vc-deleted     silver-dark)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-silver-slate-brighter-modeline
                                 (doom-lighten slate-dark 0.2)
                               base2))
   (modeline-bg-alt          (if doom-silver-slate-brighter-modeline
                                 (doom-lighten slate-dark 0.3)
                               base3))
   (modeline-bg-inactive     base1)
   (modeline-bg-inactive-alt base2)

   (-modeline-pad
    (when doom-silver-slate-padded-modeline
      (if (integerp doom-silver-slate-padded-modeline) doom-silver-slate-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground slate-light)
   ((font-lock-comment-face &override)
    :background (if doom-silver-slate-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-silver-slate-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground slate-medium)
   (css-property             :foreground silver-medium)
   (css-selector             :foreground slate-light)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-silver-slate-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground silver-medium :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base6)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base8 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground silver-medium)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground slate-light)
   ((markdown-code-face &override) :background (doom-lighten base1 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground slate-medium)
   (rjsx-attr :foreground silver-medium)
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

;;; doom-silver-slate-theme.el ends here
