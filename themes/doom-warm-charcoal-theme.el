;;; doom-warm-charcoal-theme.el --- A sophisticated warm gray and charcoal monotone light theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A sophisticated monotone light theme using warm gray and charcoal tones
;; with vibrant teal accents for strings - professional, elegant, and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-warm-charcoal-theme nil
  "Options for the `doom-warm-charcoal' theme."
  :group 'doom-themes)

(defcustom doom-warm-charcoal-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-warm-charcoal-theme
  :type 'boolean)

(defcustom doom-warm-charcoal-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-warm-charcoal-theme
  :type 'boolean)

(defcustom doom-warm-charcoal-comment-bg doom-warm-charcoal-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-warm-charcoal-theme
  :type 'boolean)

(defcustom doom-warm-charcoal-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-warm-charcoal-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-warm-charcoal
  "A sophisticated monotone light theme with warm gray, charcoal, and vibrant teal accents."
  :background-mode 'light

  ;; name        default   256           16
  ((bg         '("#fafafa" "#fafafa"     "white"        )) ; Very soft warm white
   (fg         '("#2f2f2f" "#2f2f2f"     "black"        )) ; Dark charcoal for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#f0f0f0" "#f0f0f0"     "brightwhite"  )) ; Slightly darker warm white
   (fg-alt     '("#484848" "#484848"     "brightblack"  )) ; Medium charcoal

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg.
   (base0      '("#ffffff" "#ffffff"     "white"        )) ; Pure white
   (base1      '("#f5f5f5" "#f5f5f5"     "brightwhite"  )) ; Very light warm gray
   (base2      '("#ebebeb" "#ebebeb"     "white"        )) ; Light warm gray
   (base3      '("#d4d4d4" "#d4d4d4"     "brightwhite"  )) ; Medium-light warm gray
   (base4      '("#b8b8b8" "#b8b8b8"     "brightblack"  )) ; Medium warm gray
   (base5      '("#8e8e8e" "#8e8e8e"     "brightblack"  )) ; Darker warm gray
   (base6      '("#696969" "#696969"     "brightblack"  )) ; Dark warm gray
   (base7      '("#555555" "#555555"     "black"        )) ; Very dark gray
   (base8      '("#2f2f2f" "#2f2f2f"     "black"        )) ; Deep charcoal

   ;; Warm gray palette - our primary color
   (warm-light     '("#a8a8a8" "#a8a8a8"   "brightblack"  )) ; Light warm gray
   (warm           '("#8e8e8e" "#8e8e8e"   "brightblack"  )) ; Medium warm gray
   (warm-medium    '("#757575" "#757575"   "brightblack"  )) ; Medium-dark warm gray
   (warm-dark      '("#5c5c5c" "#5c5c5c"   "brightblack"  )) ; Dark warm gray

   ;; Charcoal palette - our secondary color
   (charcoal-light '("#6b6b6b" "#6b6b6b"   "brightblack"  )) ; Light charcoal
   (charcoal       '("#555555" "#555555"   "black"        )) ; Medium charcoal
   (charcoal-medium'("#424242" "#424242"   "black"        )) ; Medium-dark charcoal
   (charcoal-dark  '("#2f4f4f" "#2f4f4f"   "black"        )) ; Dark slate charcoal

   ;; Teal palette for strings - our accent color
   (teal-dark      '("#008b8b" "#008b8b"   "cyan"         )) ; Dark cyan/teal
   (teal           '("#20b2aa" "#20b2aa"   "brightcyan"   )) ; Light sea green/teal
   (teal-light     '("#48d1cc" "#48d1cc"   "brightcyan"   )) ; Medium turquoise
   (teal-muted     '("#5f9ea0" "#5f9ea0"   "cyan"         )) ; Cadet blue for comments

   (grey       base5)
   (red        charcoal-dark)   ; Using dark charcoal for "red" elements
   (orange     warm-dark)       ; Using dark warm gray for "orange" elements
   (green      teal-light)      ; Using light teal for "green" elements
   (teal       teal)            ; Using teal for "teal" elements
   (yellow     warm-light)      ; Using light warm gray for "yellow" elements
   (blue       charcoal)        ; Using charcoal for "blue" elements
   (dark-blue  charcoal-dark)   ; Using dark charcoal for "dark-blue" elements
   (magenta    warm-medium)     ; Using medium warm gray for "magenta" elements
   (violet     charcoal-light)  ; Using light charcoal for "violet" elements
   (cyan       teal-light)      ; Using light teal for "cyan" elements
   (dark-cyan  teal-dark)       ; Using dark teal for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      warm-medium)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        warm-medium)
   (comments       (if doom-warm-charcoal-brighter-comments teal-muted (doom-darken teal-muted 0.15)))
   (doc-comments   (doom-lighten (if doom-warm-charcoal-brighter-comments teal-muted (doom-darken teal-muted 0.15)) 0.1))
   (constants      charcoal-light)
   (functions      warm-medium)
   (keywords       charcoal-dark)
   (methods        charcoal)
   (operators      base7)
   (type           charcoal-medium)
   (strings        teal)
   (variables      (doom-darken warm 0.2))
   (numbers        charcoal-light)
   (region         base4)
   (error          charcoal-dark)
   (warning        warm-dark)
   (success        teal-light)
   (vc-modified    warm-dark)
   (vc-added       teal-light)
   (vc-deleted     charcoal-dark)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-warm-charcoal-brighter-modeline
                                 (doom-lighten warm 0.5)
                               base2))
   (modeline-bg-alt          (if doom-warm-charcoal-brighter-modeline
                                 (doom-lighten warm 0.6)
                               base3))
   (modeline-bg-inactive     base1)
   (modeline-bg-inactive-alt base2)

   (-modeline-pad
    (when doom-warm-charcoal-padded-modeline
      (if (integerp doom-warm-charcoal-padded-modeline) doom-warm-charcoal-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground warm-medium)
   ((font-lock-comment-face &override)
    :background (if doom-warm-charcoal-comment-bg (doom-darken bg 0.03) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-warm-charcoal-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground warm-medium)
   (css-property             :foreground charcoal)
   (css-selector             :foreground charcoal-dark)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-warm-charcoal-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground charcoal :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base6)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base8 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground charcoal)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground charcoal-dark)
   ((markdown-code-face &override) :background (doom-darken base2 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground warm-medium)
   (rjsx-attr :foreground charcoal)
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

;;; doom-warm-charcoal-theme.el ends here
