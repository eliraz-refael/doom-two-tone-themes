;;; doom-two-tone-themes.el --- A collection of sophisticated two-tone themes for Doom Emacs -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; A collection of sophisticated themes using two main colors plus one accent color.
;; Each theme follows the principle of using two complementary base colors for syntax
;; highlighting with a carefully chosen accent color for strings and comments.
;;
;; Available themes:
;;
;; Dark themes:
;; - doom-navy-copper: Navy blue and copper with coral accents
;; - doom-silver-slate: Silver and slate with seafoam teal accents
;; - doom-cyan-charcoal: Cyan and charcoal with vibrant accents
;; - doom-purple-gold: Purple and gold with elegant accents
;; - doom-orange-grey: Orange and grey with complementary accents
;; - doom-burgundy-rose: Burgundy and rose gold with soft pink accents
;;
;; Light themes:
;; - doom-pink-sunshine: Deep pink and sunshine yellow with electric blue accents
;; - doom-slate-mushroom: Slate blue and mushroom gray with rose gold accents
;; - doom-ocean-gold: Blue-green and blue-silver with golden accents
;; - doom-teal-terracotta: Teal and terracotta with lavender accents
;; - doom-orange-grey: Orange and grey with complementary accents
;; - doom-warm-charcoal: Warm gray and charcoal with teal accents
;; - doom-dusty-steel: Dusty blue and steel blue with golden yellow accents
;;
;; Usage:
;;   (require 'doom-two-tone-themes)
;;   (load-theme 'doom-navy-copper t)
;;
;; Or in Doom Emacs:
;;   (setq doom-theme 'doom-navy-copper)
;;
;;; Code:

(require 'doom-themes)

;;; Theme list and metadata

(defconst doom-two-tone-themes-list
  '((doom-navy-copper . "Navy blue and copper with coral accents (dark)")
    (doom-silver-slate . "Silver and slate with seafoam teal accents (dark)")
    (doom-cyan-charcoal . "Cyan and charcoal with coral accents (dark)")
    (doom-purple-gold . "Purple and gold with mint green accents (dark)")
    (doom-orange-grey . "Orange and grey with complementary accents (dark)")
    (doom-burgundy-rose . "Burgundy and rose gold with soft pink accents (dark)")
    (doom-pink-sunshine . "Deep pink and sunshine yellow with electric blue accents (light)")
    (doom-slate-mushroom . "Slate blue and mushroom gray with rose gold accents (light)")
    (doom-ocean-gold . "Blue-green and blue-silver with coral accents (light)")
    (doom-teal-terracotta . "Teal and terracotta with lavender accents (light)")
    (doom-dusty-steel . "Dusty blue and steel blue with golden yellow accents (light)")
    (doom-warm-charcoal . "Warm gray and charcoal with teal accents (light)"))
  "List of available two-tone themes with descriptions.")

(defconst doom-two-tone-dark-themes
  '(doom-navy-copper doom-silver-slate doom-cyan-charcoal doom-purple-gold doom-orange-grey doom-burgundy-rose)
  "List of dark two-tone themes.")

(defconst doom-two-tone-light-themes
  '(doom-pink-sunshine doom-slate-mushroom doom-ocean-gold doom-teal-terracotta doom-dusty-steel doom-warm-charcoal)
  "List of light two-tone themes.")

(defconst doom-two-tone-dark-themes
  '(doom-navy-copper doom-silver-slate doom-cyan-charcoal doom-purple-gold)
  "List of dark two-tone themes.")

(defconst doom-two-tone-light-themes
  '(doom-pink-sunshine doom-slate-mushroom doom-ocean-gold doom-teal-terracotta doom-orange-grey)
  "List of light two-tone themes.")

;;; Interactive functions

;;;###autoload
(defun doom-two-tone-themes-list-themes ()
  "Display a list of available two-tone themes."
  (interactive)
  (with-help-window "*Doom Two-Tone Themes*"
    (princ "Available Doom Two-Tone Themes:\n\n")
    (dolist (theme doom-two-tone-themes-list)
      (princ (format "• %s\n  %s\n\n"
                     (symbol-name (car theme))
                     (cdr theme))))))

;;;###autoload
(defun doom-two-tone-themes-load-random ()
  "Load a random two-tone theme."
  (interactive)
  (let* ((themes (mapcar #'car doom-two-tone-themes-list))
         (random-theme (nth (random (length themes)) themes)))
    (load-theme random-theme t)
    (message "Loaded theme: %s" random-theme)))

;;;###autoload
(defun doom-two-tone-themes-load-random-dark ()
  "Load a random dark two-tone theme."
  (interactive)
  (let ((random-theme (nth (random (length doom-two-tone-dark-themes))
                           doom-two-tone-dark-themes)))
    (load-theme random-theme t)
    (message "Loaded dark theme: %s" random-theme)))

;;;###autoload
(defun doom-two-tone-themes-load-random-light ()
  "Load a random light two-tone theme."
  (interactive)
  (let ((random-theme (nth (random (length doom-two-tone-light-themes))
                           doom-two-tone-light-themes)))
    (load-theme random-theme t)
    (message "Loaded light theme: %s" random-theme)))

;;; Package setup

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'doom-two-tone-themes)

;;; doom-two-tone-themes.el ends here
