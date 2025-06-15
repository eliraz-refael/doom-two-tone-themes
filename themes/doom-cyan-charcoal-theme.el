;;; doom-cyan-charcoal-theme.el --- A minimal cyan and charcoal theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A sleek dark theme using shades of cyan and charcoal/graphite
;; with coral accents for strings - clean, modern, and easy on the eyes
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-cyan-charcoal-theme nil
  "Options for the `doom-cyan-charcoal' theme."
  :group 'doom-themes)

(defcustom doom-cyan-charcoal-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-cyan-charcoal-theme
  :type 'boolean)

(defcustom doom-cyan-charcoal-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-cyan-charcoal-theme
  :type 'boolean)

(defcustom doom-cyan-charcoal-comment-bg doom-cyan-charcoal-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-cyan-charcoal-theme
  :type 'boolean)

(defcustom doom-cyan-charcoal-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-cyan-charcoal-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-cyan-charcoal
  "A minimal theme with cyan, charcoal, and coral accents."

  ;; name        default   256           16
  ((bg         '("#1c1c1c" "black"       "black"        )) ; Deep charcoal background
   (fg         '("#d0d0d0" "#bfbfbf"     "brightwhite"  )) ; Light grey for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#242424" "black"       "black"        )) ; Slightly lighter charcoal
   (fg-alt     '("#666666" "#2d2d2d"     "white"        )) ; Dimmer grey

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, then base0 should be white and base8 should be black.
   (base0      '("#0d0d0d" "black"       "black"        )) ; Darkest charcoal
   (base1      '("#181818" "#1e1e1e"     "brightblack"  )) ; Very dark charcoal
   (base2      '("#2a2a2a" "#2e2e2e"     "brightblack"  )) ; Dark charcoal
   (base3      '("#3c3c3c" "#262626"     "brightblack"  )) ; Medium-dark charcoal
   (base4      '("#4e4e4e" "#3f3f3f"     "brightblack"  )) ; Medium charcoal
   (base5      '("#666666" "#525252"     "brightblack"  )) ; Light charcoal
   (base6      '("#808080" "#6b6b6b"     "brightblack"  )) ; Lighter charcoal
   (base7      '("#a0a0a0" "#979797"     "brightblack"  )) ; Very light charcoal
   (base8      '("#e8e8e8" "#dfdfdf"     "white"        )) ; Almost white

   ;; Coral palette for strings - our third accent color
   (coral-dark   '("#e66b6b" "#e66b6b"   "red"          )) ; Dark coral
   (coral        '("#ff8888" "#ff8888"   "brightred"    )) ; Main coral
   (coral-light  '("#ff9999" "#ff9999"   "brightred"    )) ; Light coral

   (grey       base4)
   (red        '("#1a8b8b" "#1a8b8b" "red"          )) ; Dark cyan for "red"
   (orange     '("#22aaaa" "#dd8844" "brightred"    )) ; Medium cyan for "orange"
   (green      '("#808080" "#99bb66" "green"        )) ; Charcoal for "green"
   (teal       '("#66cccc" "#44b9b1" "brightgreen"  )) ; Light cyan for "teal"
   (yellow     '("#44d4d4" "#ECBE7B" "yellow"       )) ; Bright cyan for "yellow"
   (blue       '("#666666" "#51afef" "brightblue"   )) ; Charcoal for "blue"
   (dark-blue  '("#3c3c3c" "#2257A0" "blue"         )) ; Dark charcoal for "dark-blue"
   (magenta    '("#55dddd" "#c678dd" "brightmagenta")) ; Bright cyan for "magenta"
   (violet     '("#77eeee" "#a9a1e1" "magenta"      )) ; Very bright cyan for "violet"
   (cyan       '("#33cccc" "#46D9FF" "brightcyan"   )) ; Pure cyan
   (dark-cyan  '("#4e4e4e" "#5699AF" "cyan"         )) ; Charcoal for "dark-cyan"

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      cyan)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      base3)
   (builtin        cyan)
   (comments       (if doom-cyan-charcoal-brighter-comments base6 base5))
   (doc-comments   (doom-lighten (if doom-cyan-charcoal-brighter-comments base6 base5) 0.25))
   (constants      teal)
   (functions      cyan)
   (keywords       red)
   (methods        yellow)
   (operators      base7)
   (type           magenta)
   (strings        coral)
   (variables      (doom-lighten cyan 0.4))
   (numbers        violet)
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          red)
   (warning        orange)
   (success        base6)
   (vc-modified    orange)
   (vc-added       base6)
   (vc-deleted     red)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base5)
   (modeline-bg              (if doom-cyan-charcoal-brighter-modeline
                                 (doom-darken cyan 0.45)
                               (doom-darken bg-alt 0.1)))
   (modeline-bg-alt          (if doom-cyan-charcoal-brighter-modeline
                                 (doom-darken cyan 0.475)
                               `(,(doom-darken (car bg-alt) 0.15) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when doom-cyan-charcoal-padded-modeline
      (if (integerp doom-cyan-charcoal-padded-modeline) doom-cyan-charcoal-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground cyan)
   ((font-lock-comment-face &override)
    :background (if doom-cyan-charcoal-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-cyan-charcoal-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground cyan)
   (css-property             :foreground base6)
   (css-selector             :foreground cyan)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-cyan-charcoal-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground base6 :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base1)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base0 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground base6)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground cyan)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground cyan)
   (rjsx-attr :foreground teal)
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

;;; doom-cyan-charcoal-theme.el ends here
