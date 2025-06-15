;;; doom-slate-mushroom-theme.el --- A sophisticated slate blue and mushroom gray light theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A sophisticated light monotone theme using slate blue and mushroom gray
;; with rose gold accents for strings - elegant, modern, and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-slate-mushroom-theme nil
  "Options for the `doom-slate-mushroom' theme."
  :group 'doom-themes)

(defcustom doom-slate-mushroom-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-slate-mushroom-theme
  :type 'boolean)

(defcustom doom-slate-mushroom-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-slate-mushroom-theme
  :type 'boolean)

(defcustom doom-slate-mushroom-comment-bg doom-slate-mushroom-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-slate-mushroom-theme
  :type 'boolean)

(defcustom doom-slate-mushroom-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-slate-mushroom-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-slate-mushroom
  "A sophisticated light monotone theme with slate blue, mushroom gray, and rose gold accents."
  :background-mode 'light

  ;; name        default   256           16
  ((bg         '("#f5f5f5" "#f5f5f5"     "white"        )) ; Soft pearl background
   (fg         '("#2c2c2c" "#2c2c2c"     "black"        )) ; Dark charcoal for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#eeeeee" "#eeeeee"     "brightwhite"  )) ; Slightly darker pearl
   (fg-alt     '("#5a5a5a" "#5a5a5a"     "brightblack"  )) ; Medium gray

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg.
   (base0      '("#ffffff" "#ffffff"     "white"        )) ; Pure white
   (base1      '("#f8f8f8" "#f8f8f8"     "brightwhite"  )) ; Very light gray
   (base2      '("#e8e8e8" "#e8e8e8"     "white"        )) ; Light gray
   (base3      '("#d8d8d8" "#d8d8d8"     "brightwhite"  )) ; Medium-light gray
   (base4      '("#c0c0c0" "#c0c0c0"     "brightblack"  )) ; Medium gray
   (base5      '("#999999" "#999999"     "brightblack"  )) ; Darker gray
   (base6      '("#777777" "#777777"     "brightblack"  )) ; Dark gray
   (base7      '("#555555" "#555555"     "black"        )) ; Very dark gray
   (base8      '("#1a1a1a" "#1a1a1a"     "black"        )) ; Almost black

   ;; Slate blue palette - our primary color
   (slate-dark     '("#2f4f4f" "#2f4f4f"   "black"        )) ; Dark slate gray
   (slate          '("#708090" "#708090"   "brightblack"  )) ; Slate gray
   (slate-medium   '("#5a6b7a" "#5a6b7a"   "brightblack"  )) ; Medium slate blue
   (slate-light    '("#8fa5b5" "#8fa5b5"   "brightblack"  )) ; Light slate blue

   ;; Mushroom gray palette - our secondary color
   (mushroom-dark  '("#696969" "#696969"   "brightblack"  )) ; Dim gray
   (mushroom       '("#888888" "#888888"   "brightblack"  )) ; Gray
   (mushroom-light '("#707070" "#707070"   "brightblack"  )) ; Readable gray
   (mushroom-pale  '("#a0a0a0" "#a0a0a0"   "brightblack"  )) ; Light gray

   ;; Rose gold palette for strings - our accent color
   (rose-dark      '("#a91e47" "#a91e47"   "red"          )) ; Dark rose
   (rose           '("#c2185b" "#c2185b"   "brightred"    )) ; Rose gold
   (rose-light     '("#d4679a" "#d4679a"   "brightred"    )) ; Light rose gold
   (rose-muted     '("#d4a5a5" "#d4a5a5"   "brightred"    )) ; Muted rose for comments

   (grey       base5)
   (red        rose-dark)     ; Using dark rose for "red" elements
   (orange     mushroom-dark) ; Using dark mushroom for "orange" elements
   (green      slate-light)   ; Using light slate for "green" elements
   (teal       slate-medium)  ; Using medium slate for "teal" elements
   (yellow     mushroom-pale) ; Using pale mushroom for "yellow" elements
   (blue       slate)         ; Using slate for "blue" elements
   (dark-blue  slate-dark)    ; Using dark slate for "dark-blue" elements
   (magenta    rose)          ; Using rose for "magenta" elements
   (violet     rose-light)    ; Using light rose for "violet" elements
   (cyan       slate-light)   ; Using light slate for "cyan" elements
   (dark-cyan  slate-dark)    ; Using dark slate for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      slate-medium)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        slate-medium)
   (comments       (if doom-slate-mushroom-brighter-comments rose-muted (doom-darken rose-muted 0.15)))
   (doc-comments   (doom-lighten (if doom-slate-mushroom-brighter-comments rose-muted (doom-darken rose-muted 0.15)) 0.1))
   (constants      mushroom-pale)
   (functions      slate-medium)
   (keywords       slate-dark)
   (methods        mushroom)
   (operators      base7)
   (type           mushroom-light)
   (strings        rose)
   (variables      (doom-darken slate 0.2))
   (numbers        mushroom-pale)
   (region         base4)
   (error          rose-dark)
   (warning        mushroom-dark)
   (success        slate-light)
   (vc-modified    mushroom-dark)
   (vc-added       slate-light)
   (vc-deleted     rose-dark)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-slate-mushroom-brighter-modeline
                                 (doom-darken slate 0.5)
                               base2))
   (modeline-bg-alt          (if doom-slate-mushroom-brighter-modeline
                                 (doom-darken slate 0.4)
                               base3))
   (modeline-bg-inactive     base1)
   (modeline-bg-inactive-alt base2)

   (-modeline-pad
    (when doom-slate-mushroom-padded-modeline
      (if (integerp doom-slate-mushroom-padded-modeline) doom-slate-mushroom-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground slate-medium)
   ((font-lock-comment-face &override)
    :background (if doom-slate-mushroom-comment-bg (doom-darken bg 0.03) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-slate-mushroom-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground slate-medium)
   (css-property             :foreground mushroom)
   (css-selector             :foreground slate-dark)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-slate-mushroom-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground mushroom :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base6)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base8 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground mushroom)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground slate-dark)
   ((markdown-code-face &override) :background (doom-darken base2 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground slate-medium)
   (rjsx-attr :foreground mushroom)
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

;;; doom-slate-mushroom-theme.el ends here
