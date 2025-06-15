;;; doom-pink-sunshine-theme.el --- A bold deep pink and sunshine yellow light theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A bold and vibrant light theme using deep pink and sunshine yellow
;; with electric blue accents for strings - energetic, modern, and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-pink-sunshine-theme nil
  "Options for the `doom-pink-sunshine' theme."
  :group 'doom-themes)

(defcustom doom-pink-sunshine-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-pink-sunshine-theme
  :type 'boolean)

(defcustom doom-pink-sunshine-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-pink-sunshine-theme
  :type 'boolean)

(defcustom doom-pink-sunshine-comment-bg doom-pink-sunshine-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-pink-sunshine-theme
  :type 'boolean)

(defcustom doom-pink-sunshine-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-pink-sunshine-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-pink-sunshine
  "A bold and vibrant light theme with deep pink, sunshine yellow, and electric blue accents."
  :background-mode 'light

  ;; name        default   256           16
  ((bg         '("#fafafa" "#fafafa"     "white"        )) ; Pearl white background
   (fg         '("#212121" "#212121"     "black"        )) ; Very dark gray for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#f0f0f0" "#f0f0f0"     "brightwhite"  )) ; Slightly darker white
   (fg-alt     '("#424242" "#424242"     "brightblack"  )) ; Medium gray

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg.
   (base0      '("#ffffff" "#ffffff"     "white"        )) ; Pure white
   (base1      '("#f5f5f5" "#f5f5f5"     "brightwhite"  )) ; Very light gray
   (base2      '("#eeeeee" "#eeeeee"     "white"        )) ; Light gray
   (base3      '("#e0e0e0" "#e0e0e0"     "brightwhite"  )) ; Medium-light gray
   (base4      '("#bdbdbd" "#bdbdbd"     "brightblack"  )) ; Medium gray
   (base5      '("#9e9e9e" "#9e9e9e"     "brightblack"  )) ; Darker gray
   (base6      '("#757575" "#757575"     "brightblack"  )) ; Dark gray
   (base7      '("#424242" "#424242"     "black"        )) ; Very dark gray
   (base8      '("#212121" "#212121"     "black"        )) ; Almost black

   ;; Deep pink palette - our primary color
   (pink-dark      '("#880e4f" "#880e4f"   "red"          )) ; Deep pink
   (pink           '("#ad1457" "#ad1457"   "brightred"    )) ; Medium pink
   (pink-medium    '("#d81b60" "#d81b60"   "brightred"    )) ; Bright pink
   (pink-light     '("#f06292" "#f06292"   "brightred"    )) ; Light pink

   ;; Sunshine yellow palette - our secondary color
   (yellow-dark    '("#e65100" "#e65100"   "yellow"       )) ; Dark orange-yellow
   (yellow         '("#ff6f00" "#ff6f00"   "brightyellow" )) ; Bright orange-yellow
   (yellow-medium  '("#ff8f00" "#ff8f00"   "brightyellow" )) ; Medium sunshine
   (yellow-light   '("#ffb300" "#ffb300"   "brightyellow" )) ; Light sunshine

   ;; Electric blue palette for strings - our accent color
   (blue-dark      '("#01579b" "#01579b"   "blue"         )) ; Dark electric blue
   (blue           '("#0277bd" "#0277bd"   "brightblue"   )) ; Electric blue
   (blue-light     '("#039be5" "#039be5"   "brightblue"   )) ; Light electric blue
   (blue-muted     '("#81c7e5" "#81c7e5"   "brightblue"   )) ; Muted blue for comments

   (grey       base5)
   (red        pink-dark)     ; Using deep pink for "red" elements
   (orange     yellow)        ; Using sunshine yellow for "orange" elements
   (green      blue-light)    ; Using light blue for "green" elements
   (teal       blue)          ; Using electric blue for "teal" elements
   (yellow     yellow-light)  ; Using light sunshine for "yellow" elements
   (blue       blue)          ; Using electric blue for "blue" elements
   (dark-blue  blue-dark)     ; Using dark blue for "dark-blue" elements
   (magenta    pink)          ; Using medium pink for "magenta" elements
   (violet     pink-light)    ; Using light pink for "violet" elements
   (cyan       blue-light)    ; Using light blue for "cyan" elements
   (dark-cyan  blue-dark)     ; Using dark blue for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      pink-medium)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        pink-medium)
   (comments       (if doom-pink-sunshine-brighter-comments blue-muted (doom-darken blue-muted 0.2)))
   (doc-comments   (doom-lighten (if doom-pink-sunshine-brighter-comments blue-muted (doom-darken blue-muted 0.2)) 0.1))
   (constants      yellow-light)
   (functions      pink-medium)
   (keywords       pink-dark)
   (methods        yellow)
   (operators      base7)
   (type           yellow-medium)
   (strings        blue)
   (variables      (doom-darken pink 0.2))
   (numbers        yellow-light)
   (region         base4)
   (error          pink-dark)
   (warning        yellow-dark)
   (success        blue-light)
   (vc-modified    yellow-dark)
   (vc-added       blue-light)
   (vc-deleted     pink-dark)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-pink-sunshine-brighter-modeline
                                 (doom-lighten pink 0.6)
                               base2))
   (modeline-bg-alt          (if doom-pink-sunshine-brighter-modeline
                                 (doom-lighten pink 0.7)
                               base3))
   (modeline-bg-inactive     base1)
   (modeline-bg-inactive-alt base2)

   (-modeline-pad
    (when doom-pink-sunshine-padded-modeline
      (if (integerp doom-pink-sunshine-padded-modeline) doom-pink-sunshine-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground pink-medium)
   ((font-lock-comment-face &override)
    :background (if doom-pink-sunshine-comment-bg (doom-darken bg 0.03) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-pink-sunshine-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground pink-medium)
   (css-property             :foreground yellow)
   (css-selector             :foreground pink-dark)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-pink-sunshine-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground yellow :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base6)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base8 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground yellow)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base6)
   (markdown-header-face :inherit 'bold :foreground pink-dark)
   ((markdown-code-face &override) :background (doom-darken base2 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground pink-medium)
   (rjsx-attr :foreground yellow)
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

;;; doom-pink-sunshine-theme.el ends here
