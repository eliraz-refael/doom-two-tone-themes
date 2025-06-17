;;; doom-purple-gold-theme.el --- A luxurious purple and gold theme -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A sophisticated dark theme using shades of deep purple and soft gold
;; with mint green accents for strings - luxurious, elegant, and readable
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-purple-gold-theme nil
  "Options for the `doom-purple-gold' theme."
  :group 'doom-themes)

(defcustom doom-purple-gold-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-purple-gold-theme
  :type 'boolean)

(defcustom doom-purple-gold-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-purple-gold-theme
  :type 'boolean)

(defcustom doom-purple-gold-comment-bg doom-purple-gold-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'doom-purple-gold-theme
  :type 'boolean)

(defcustom doom-purple-gold-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-purple-gold-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-purple-gold
  "A luxurious theme with deep purple, soft gold, and mint accents."

  ;; name        default   256           16
  ((bg         '("#1a1520" "black"       "black"        )) ; Deep purple-black background
   (fg         '("#e6d6c7" "#bfbfbf"     "brightwhite"  )) ; Warm cream for main text

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#211a28" "black"       "black"        )) ; Slightly lighter purple
   (fg-alt     '("#8a7968" "#2d2d2d"     "white"        )) ; Dimmer gold-brown

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, then base0 should be white and base8 should be black.
   (base0      '("#0f0a12" "black"       "black"        )) ; Darkest purple
   (base1      '("#16111c" "#1e1e1e"     "brightblack"  )) ; Very dark purple
   (base2      '("#2a1f35" "#2e2e2e"     "brightblack"  )) ; Dark purple
   (base3      '("#3d2d4a" "#262626"     "brightblack"  )) ; Medium-dark purple
   (base4      '("#524060" "#3f3f3f"     "brightblack"  )) ; Medium purple-grey
   (base5      '("#6b5577" "#525252"     "brightblack"  )) ; Light purple-grey
   (base6      '("#8a7085" "#6b6b6b"     "brightblack"  )) ; Lighter purple-grey
   (base7      '("#b5a298" "#979797"     "brightblack"  )) ; Light gold-brown
   (base8      '("#f0e6d2" "#dfdfdf"     "white"        )) ; Warm cream

   ;; Purple palette - our primary color
   (purple-dark    '("#4a2c5a" "#4a2c5a"   "magenta"      )) ; Dark purple
   (purple         '("#6b4c7d" "#6b4c7d"   "brightmagenta")) ; Medium purple
   (purple-light   '("#8f6ba3" "#8f6ba3"   "brightmagenta")) ; Light purple
   (purple-bright  '("#b088c9" "#b088c9"   "brightmagenta")) ; Bright purple

   ;; Gold palette - our secondary color
   (gold-dark      '("#b8860b" "#b8860b"   "yellow"       )) ; Dark gold
   (gold           '("#daa520" "#daa520"   "brightyellow" )) ; Medium gold
   (gold-light     '("#f4c430" "#f4c430"   "brightyellow" )) ; Light gold
   (gold-bright    '("#ffd700" "#ffd700"   "brightyellow" )) ; Bright gold

   ;; Mint palette for strings - our complement color
   (mint-dark      '("#5a9a7a" "#5a9a7a"   "green"        )) ; Dark mint
   (mint           '("#7fb99f" "#7fb99f"   "brightgreen"  )) ; Medium mint
   (mint-light     '("#9dd6c4" "#9dd6c4"   "brightgreen"  )) ; Light mint

   ;; Additional colors for better diff visibility
   (diff-added-bg    '("#1a3d2e" "#1a3d2e"   "green"        )) ; Dark green background for added lines
   (diff-added-fg    '("#98fb98" "#98fb98"   "brightgreen"  )) ; Pale green text for added lines
   (diff-removed-bg  '("#4a1e2b" "#4a1e2b"   "red"          )) ; Dark red background for removed lines
   (diff-removed-fg  '("#ffb3ba" "#ffb3ba"   "brightred"    )) ; Light red text for removed lines
   (diff-changed-bg  '("#3d3420" "#3d3420"   "yellow"       )) ; Dark yellow background for changed lines
   (diff-changed-fg  '("#fff4a3" "#fff4a3"   "brightyellow" )) ; Light yellow text for changed lines

   (grey       base4)
   (red        diff-removed-fg)   ; Using light red for better visibility
   (orange     gold-dark)         ; Using dark gold for "orange" elements
   (green      diff-added-fg)     ; Using light green for better visibility
   (teal       mint-light)        ; Using light mint for "teal" elements
   (yellow     diff-changed-fg)   ; Using light yellow for better visibility
   (blue       purple)            ; Using purple for "blue" elements
   (dark-blue  purple-dark)       ; Using dark purple for "dark-blue" elements
   (magenta    purple-light)      ; Using light purple for "magenta" elements
   (violet     purple-bright)     ; Using bright purple for "violet" elements
   (cyan       base6)             ; Using purple-grey for "cyan" elements
   (dark-cyan  base4)             ; Using medium purple-grey for "dark-cyan" elements

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      purple-light)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      base3)
   (builtin        purple)
   (comments       (if doom-purple-gold-brighter-comments base6 base5))
   (doc-comments   (doom-lighten (if doom-purple-gold-brighter-comments base6 base5) 0.25))
   (constants      gold-bright)
   (functions      purple-light)
   (keywords       purple-bright)   ; CHANGED: was purple-dark, now purple-bright for better contrast
   (methods        gold)
   (operators      base7)
   (type           gold-light)
   (strings        mint)
   (variables      (doom-lighten purple 0.4))
   (numbers        gold-bright)
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          diff-removed-fg)    ; Better visibility for errors
   (warning        diff-changed-fg)    ; Better visibility for warnings
   (success        diff-added-fg)      ; Better visibility for success
   (vc-modified    diff-changed-fg)    ; Better visibility for modified files
   (vc-added       diff-added-fg)      ; Better visibility for added files
   (vc-deleted     diff-removed-fg)    ; Better visibility for deleted files

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base5)
   (modeline-bg              (if doom-purple-gold-brighter-modeline
                                 (doom-darken purple 0.45)
                               (doom-darken bg-alt 0.1)))
   (modeline-bg-alt          (if doom-purple-gold-brighter-modeline
                                 (doom-darken purple 0.475)
                               `(,(doom-darken (car bg-alt) 0.15) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when doom-purple-gold-padded-modeline
      (if (integerp doom-purple-gold-padded-modeline) doom-purple-gold-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground purple-light)
   ((font-lock-comment-face &override)
    :background (if doom-purple-gold-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-purple-gold-brighter-modeline base8 highlight))

   ;;;; Better diff colors for readability
   (diff-added :background diff-added-bg :foreground diff-added-fg)
   (diff-removed :background diff-removed-bg :foreground diff-removed-fg)
   (diff-changed :background diff-changed-bg :foreground diff-changed-fg)
   (diff-header :foreground base7 :background base2)
   (diff-file-header :foreground base8 :background base3)
   (diff-hunk-header :foreground gold-light :background base2)

   ;;;; Magit diff improvements
   (magit-diff-added :background diff-added-bg :foreground diff-added-fg)
   (magit-diff-added-highlight :background (doom-lighten diff-added-bg 0.2) :foreground diff-added-fg)
   (magit-diff-removed :background diff-removed-bg :foreground diff-removed-fg)
   (magit-diff-removed-highlight :background (doom-lighten diff-removed-bg 0.2) :foreground diff-removed-fg)
   (magit-diff-context :foreground base6)
   (magit-diff-context-highlight :background base2 :foreground base7)
   (magit-diff-hunk-heading :background base2 :foreground gold-light)
   (magit-diff-hunk-heading-highlight :background base3 :foreground gold-light)

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground purple-light)
   (css-property             :foreground gold)
   (css-selector             :foreground purple)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-purple-gold-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground gold :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background base3 :foreground base1)
   ;;;; ivy
   (ivy-current-match :background base3 :distant-foreground base0 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground gold)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground purple-light)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground purple-light)
   (rjsx-attr :foreground gold)
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

;;; doom-purple-gold-theme.el ends here
