;;; doom-ocean-gold-theme.el --- A sophisticated blue-green and blue-silver light theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A sophisticated light theme using blue-green and blue-silver
;; with warm coral accents for strings - elegant, oceanic, and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-ocean-gold-theme nil
  "Options for the `doom-ocean-gold' theme."
  :group 'doom-themes)

(defcustom doom-ocean-gold-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-ocean-gold-theme
  :type 'boolean)

(defcustom doom-ocean-gold-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-ocean-gold-theme
  :type 'boolean)

(defcustom doom-ocean-gold-comment-bg doom-ocean-gold-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-ocean-gold-theme
  :type 'boolean)

(defcustom doom-ocean-gold-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-ocean-gold-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-ocean-gold
  "A sophisticated light theme with blue-green, blue-silver, and warm coral accents."
  :background-mode 'light

  ;; name        default   256           16
  ((bg         '("#fafafa" "#fafafa"     "white"        )) ; Soft white background
   (fg         '("#263238" "#263238"     "black"        )) ; Deep blue-gray for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#f0f4f5" "#f0f4f5"     "brightwhite"  )) ; Slightly blue-tinted white
   (fg-alt     '("#455a64" "#455a64"     "brightblack"  )) ; Medium blue-gray

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg.
   (base0      '("#ffffff" "#ffffff"     "white"        )) ; Pure white
   (base1      '("#f5f7f8" "#f5f7f8"     "brightwhite"  )) ; Very light blue-white
   (base2      '("#eceff1" "#eceff1"     "white"        )) ; Light blue-gray
   (base3      '("#cfd8dc" "#cfd8dc"     "brightwhite"  )) ; Medium-light blue-gray
   (base4      '("#b0bec5" "#b0bec5"     "brightblack"  )) ; Medium blue-gray
   (base5      '("#90a4ae" "#90a4ae"     "brightblack"  )) ; Darker blue-gray
   (base6      '("#607d8b" "#607d8b"     "brightblack"  )) ; Dark blue-gray
   (base7      '("#455a64" "#455a64"     "black"        )) ; Very dark blue-gray
   (base8      '("#263238" "#263238"     "black"        )) ; Deep blue-gray

   ;; Blue-green palette - our primary color
   (teal-dark      '("#006064" "#006064"   "cyan"         )) ; Dark cyan
   (teal           '("#00838f" "#00838f"   "brightcyan"   )) ; Medium teal
   (teal-medium    '("#0097a7" "#0097a7"   "brightcyan"   )) ; Bright teal
   (teal-light     '("#26a69a" "#26a69a"   "brightcyan"   )) ; Light teal

   ;; Blue-silver palette - our secondary color
   (steel-dark     '("#37474f" "#37474f"   "brightblack"  )) ; Dark blue-gray
   (steel          '("#546e7a" "#546e7a"   "brightblack"  )) ; Medium blue-gray
   (steel-medium   '("#607d8b" "#607d8b"   "brightblack"  )) ; Steel blue
   (steel-light    '("#78909c" "#78909c"   "brightblack"  )) ; Light steel blue

   ;; Coral palette for strings - our accent color
   (coral-dark     '("#e53e3e" "#e53e3e"   "red"          )) ; Dark coral
   (coral          '("#ff6b6b" "#ff6b6b"   "brightred"    )) ; Coral
   (coral-light    '("#fa7268" "#fa7268"   "brightred"    )) ; Light coral
   (coral-muted    '("#ffb3b3" "#ffb3b3"   "brightred"    )) ; Muted coral for comments

   (grey       base5)
   (red        coral-dark)    ; Using dark coral for "red" elements
   (orange     coral)         ; Using coral for "orange" elements
   (green      teal-light)    ; Using light teal for "green" elements
   (teal       teal-medium)   ; Using medium teal for "teal" elements
   (yellow     coral-light)   ; Using light coral for "yellow" elements
   (blue       teal)          ; Using teal for "blue" elements
   (dark-blue  teal-dark)     ; Using dark teal for "dark-blue" elements
   (magenta    steel-medium)  ; Using steel for "magenta" elements
   (violet     steel-medium)  ; Using steel for "violet" elements
   (cyan       teal-light)    ; Using light teal for "cyan" elements
   (dark-cyan  teal-dark)     ; Using dark teal for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      teal-medium)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        teal-medium)
   (comments       (if doom-ocean-gold-brighter-comments coral-muted (doom-darken coral-muted 0.15)))
   (doc-comments   (doom-lighten (if doom-ocean-gold-brighter-comments coral-muted (doom-darken coral-muted 0.15)) 0.1))
   (constants      coral)
   (functions      teal-medium)
   (keywords       teal-dark)
   (methods        steel)
   (operators      base7)
   (type           steel-dark)
   (strings        coral)
   (variables      (doom-darken teal 0.2))
   (numbers        coral)
   (region         base4)
   (error          steel-dark)
   (warning        coral-dark)
   (success        teal-light)
   (vc-modified    coral-dark)
   (vc-added       teal-light)
   (vc-deleted     steel-dark)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-ocean-gold-brighter-modeline
                                 (doom-lighten teal 0.6)
                               base2))
   (modeline-bg-alt          (if doom-ocean-gold-brighter-modeline
                                 (doom-lighten teal 0.7)
                               base3))
   (modeline-bg-inactive     base1)
   (modeline-bg-inactive-alt base2)

   (-modeline-pad
    (when doom-ocean-gold-padded-modeline
      (if (integerp doom-ocean-gold-padded-modeline) doom-ocean-gold-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground teal-medium)
   ((font-lock-comment-face &override)
    :background (if doom-ocean-gold-comment-bg (doom-darken bg 0.03) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-ocean-gold-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground teal-medium)
   (css-property             :foreground steel)
   (css-selector             :foreground teal-dark)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-ocean-gold-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground steel :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base6)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base8 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground steel)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground teal-dark)
   ((markdown-code-face &override) :background (doom-darken base2 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground teal-medium)
   (rjsx-attr :foreground steel)
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

;;; doom-ocean-gold-theme.el ends here
