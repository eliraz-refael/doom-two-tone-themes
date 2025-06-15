;;; doom-orange-grey-theme.el --- A minimalist two-color theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A gentle dark theme using only shades of grey and orange
;; Designed to be easy on the eyes with pleasant contrast
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-orange-grey-theme nil
  "Options for the `doom-orange-grey' theme."
  :group 'doom-themes)

(defcustom doom-orange-grey-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-orange-grey-theme
  :type 'boolean)

(defcustom doom-orange-grey-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-orange-grey-theme
  :type 'boolean)

(defcustom doom-orange-grey-comment-bg doom-orange-grey-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-orange-grey-theme
  :type 'boolean)

(defcustom doom-orange-grey-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-orange-grey-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-orange-grey
  "A minimalist theme with shades of grey and orange."

  ;; name        default   256           16
  ((bg         '("#1e1e1e" "black"       "black"        )) ; Soft dark background
   (fg         '("#c0c0c0" "#bfbfbf"     "brightwhite"  )) ; Light grey for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#262626" "black"       "black"        )) ; Slightly lighter background
   (fg-alt     '("#6a6a6a" "#2d2d2d"     "white"        )) ; Dimmer grey

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, then base0 should be white and base8 should be black.
   (base0      '("#0f0f0f" "black"       "black"        ))
   (base1      '("#1a1a1a" "#1e1e1e"     "brightblack"  ))
   (base2      '("#2a2a2a" "#2e2e2e"     "brightblack"  ))
   (base3      '("#3a3a3a" "#262626"     "brightblack"  ))
   (base4      '("#4a4a4a" "#3f3f3f"     "brightblack"  ))
   (base5      '("#6a6a6a" "#525252"     "brightblack"  ))
   (base6      '("#8a8a8a" "#6b6b6b"     "brightblack"  ))
   (base7      '("#aaaaaa" "#979797"     "brightblack"  ))
   (base8      '("#e0e0e0" "#dfdfdf"     "white"        ))

   (grey       base4)
   (red        '("#cc6600" "#cc6600" "red"          )) ; Dark orange for "red"
   (orange     '("#ff8800" "#dd8844" "brightred"    )) ; Main orange
   (green      '("#8a8a8a" "#99bb66" "green"        )) ; Grey for "green"
   (teal       '("#6a6a6a" "#44b9b1" "brightgreen"  )) ; Grey for "teal"
   (yellow     '("#ffaa44" "#ECBE7B" "yellow"       )) ; Light orange for "yellow"
   (blue       '("#6a6a6a" "#51afef" "brightblue"   )) ; Grey for "blue"
   (dark-blue  '("#3a3a3a" "#2257A0" "blue"         )) ; Dark grey for "dark-blue"
   (magenta    '("#ffaa44" "#c678dd" "brightmagenta")) ; Light orange for "magenta"
   (violet     '("#ffcc77" "#a9a1e1" "magenta"      )) ; Bright orange for "violet"
   (cyan       '("#aaaaaa" "#46D9FF" "brightcyan"   )) ; Light grey for "cyan"
   (dark-cyan  '("#4a4a4a" "#5699AF" "cyan"         )) ; Grey for "dark-cyan"

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      orange)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      base3)
   (builtin        orange)
   (comments       (if doom-orange-grey-brighter-comments base6 base5))
   (doc-comments   (doom-lighten (if doom-orange-grey-brighter-comments base6 base5) 0.25))
   (constants      yellow)
   (functions      orange)
   (keywords       red)
   (methods        yellow)
   (operators      base7)
   (type           yellow)
   (strings        base7)
   (variables      (doom-lighten orange 0.4))
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
   (modeline-bg              (if doom-orange-grey-brighter-modeline
                                 (doom-darken orange 0.45)
                               (doom-darken bg-alt 0.1)))
   (modeline-bg-alt          (if doom-orange-grey-brighter-modeline
                                 (doom-darken orange 0.475)
                               `(,(doom-darken (car bg-alt) 0.15) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when doom-orange-grey-padded-modeline
      (if (integerp doom-orange-grey-padded-modeline) doom-orange-grey-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground orange)
   ((font-lock-comment-face &override)
    :background (if doom-orange-grey-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-orange-grey-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground base6)
   (css-selector             :foreground orange)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-orange-grey-brighter-modeline modeline-bg highlight))
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
   (markdown-header-face :inherit 'bold :foreground orange)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground orange)
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

;;; doom-orange-grey-theme.el ends here
