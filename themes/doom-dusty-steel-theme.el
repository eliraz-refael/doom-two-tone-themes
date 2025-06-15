;;; doom-dusty-steel-theme.el --- A calming dusty blue and steel blue light theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A calming light theme using dusty blue and steel blue tones
;; with golden yellow accents for strings - easy on the eyes and highly readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-dusty-steel-theme nil
  "Options for the `doom-dusty-steel' theme."
  :group 'doom-themes)

(defcustom doom-dusty-steel-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-dusty-steel-theme
  :type 'boolean)

(defcustom doom-dusty-steel-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-dusty-steel-theme
  :type 'boolean)

(defcustom doom-dusty-steel-comment-bg doom-dusty-steel-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-dusty-steel-theme
  :type 'boolean)

(defcustom doom-dusty-steel-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-dusty-steel-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-dusty-steel
  "A calming light theme with dusty blue, steel blue, and golden yellow accents."
  :background-mode 'light

  ;; name        default   256           16
  ((bg         '("#f8f9fa" "#f8f9fa"     "white"        )) ; Very soft off-white
   (fg         '("#2c3e50" "#2c3e50"     "black"        )) ; Dark blue-gray for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#ecf0f1" "#ecf0f1"     "brightwhite"  )) ; Slightly blue-tinted white
   (fg-alt     '("#34495e" "#34495e"     "brightblack"  )) ; Medium blue-gray

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg.
   (base0      '("#ffffff" "#ffffff"     "white"        )) ; Pure white
   (base1      '("#f4f6f7" "#f4f6f7"     "brightwhite"  )) ; Very light blue-white
   (base2      '("#e8eef2" "#e8eef2"     "white"        )) ; Light blue-gray
   (base3      '("#d5dbdb" "#d5dbdb"     "brightwhite"  )) ; Medium-light blue-gray
   (base4      '("#bdc3c7" "#bdc3c7"     "brightblack"  )) ; Medium blue-gray
   (base5      '("#95a5a6" "#95a5a6"     "brightblack"  )) ; Darker blue-gray
   (base6      '("#7f8c8d" "#7f8c8d"     "brightblack"  )) ; Dark blue-gray
   (base7      '("#566573" "#566573"     "black"        )) ; Very dark blue-gray
   (base8      '("#2c3e50" "#2c3e50"     "black"        )) ; Deep blue-gray

   ;; Dusty blue palette - our primary color
   (dusty-dark     '("#4f7ba6" "#4f7ba6"   "blue"         )) ; Dark dusty blue
   (dusty          '("#6b8cae" "#6b8cae"   "brightblue"   )) ; Medium dusty blue
   (dusty-medium   '("#7a9bc4" "#7a9bc4"   "brightblue"   )) ; Medium-light dusty blue
   (dusty-light    '("#9bb4d4" "#9bb4d4"   "brightblue"   )) ; Light dusty blue

   ;; Steel blue palette - our secondary color
   (steel-dark     '("#36648b" "#36648b"   "brightblue"   )) ; Dark steel blue
   (steel          '("#5d8aa8" "#5d8aa8"   "brightblue"   )) ; Medium steel blue
   (steel-medium   '("#4682b4" "#4682b4"   "brightblue"   )) ; Steel blue
   (steel-light    '("#87ceeb" "#87ceeb"   "brightcyan"   )) ; Light steel blue

   ;; Golden yellow palette for strings - our accent color
   (gold-dark      '("#b8860b" "#b8860b"   "yellow"       )) ; Dark goldenrod
   (gold           '("#daa520" "#daa520"   "brightyellow" )) ; Goldenrod
   (gold-light     '("#f0d03f" "#f0d03f"   "brightyellow" )) ; Light golden yellow
   (gold-muted     '("#e6cc80" "#e6cc80"   "brightyellow" )) ; Muted gold for comments

   (grey       base5)
   (red        steel-dark)    ; Using dark steel for "red" elements
   (orange     dusty-dark)    ; Using dark dusty blue for "orange" elements
   (green      steel-light)   ; Using light steel for "green" elements
   (teal       steel)         ; Using steel for "teal" elements
   (yellow     gold-light)    ; Using light gold for "yellow" elements
   (blue       dusty)         ; Using dusty blue for "blue" elements
   (dark-blue  dusty-dark)    ; Using dark dusty blue for "dark-blue" elements
   (magenta    steel-medium)  ; Using medium steel for "magenta" elements
   (violet     dusty-light)   ; Using light dusty blue for "violet" elements
   (cyan       steel-light)   ; Using light steel for "cyan" elements
   (dark-cyan  steel-dark)    ; Using dark steel for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      dusty-medium)
   (vertical-bar   base3)
   (selection      base3)
   (builtin        dusty-medium)
   (comments       (if doom-dusty-steel-brighter-comments gold-muted (doom-darken gold-muted 0.1)))
   (doc-comments   (doom-lighten (if doom-dusty-steel-brighter-comments gold-muted (doom-darken gold-muted 0.1)) 0.1))
   (constants      gold)
   (functions      dusty-medium)
   (keywords       dusty-dark)
   (methods        steel)
   (operators      base7)
   (type           steel-medium)
   (strings        gold)
   (variables      (doom-darken dusty 0.2))
   (numbers        gold-light)
   (region         base4)
   (error          steel-dark)
   (warning        gold-dark)
   (success        steel-light)
   (vc-modified    gold-dark)
   (vc-added       steel-light)
   (vc-deleted     steel-dark)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base6)
   (modeline-bg              (if doom-dusty-steel-brighter-modeline
                                 (doom-lighten dusty 0.6)
                               base2))
   (modeline-bg-alt          (if doom-dusty-steel-brighter-modeline
                                 (doom-lighten dusty 0.7)
                               base3))
   (modeline-bg-inactive     base1)
   (modeline-bg-inactive-alt base2)

   (-modeline-pad
    (when doom-dusty-steel-padded-modeline
      (if (integerp doom-dusty-steel-padded-modeline) doom-dusty-steel-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground dusty-medium)
   ((font-lock-comment-face &override)
    :background (if doom-dusty-steel-comment-bg (doom-darken bg 0.03) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-dusty-steel-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground dusty-medium)
   (css-property             :foreground steel)
   (css-selector             :foreground dusty-dark)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-dusty-steel-brighter-modeline modeline-bg highlight))
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
   (markdown-header-face :inherit 'bold :foreground dusty-dark)
   ((markdown-code-face &override) :background (doom-darken base2 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground dusty-medium)
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

;;; doom-dusty-steel-theme.el ends here
