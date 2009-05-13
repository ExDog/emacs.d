(defvar *window-system-color-theme* 'color-theme-pierson
  "Color theme to use in window-system frames")
(defvar *tty-color-theme* 'color-theme-emacs-nw
  "Color theme to use in TTY frames")


(require 'color-theme-autoloads)
(autoload 'color-theme-zenburn "zenburn" "A low contrast color theme" t)
(autoload 'color-theme-twilight "color-theme-twilight" "A dark color theme" t)
(autoload 'color-theme-vivid-chalk "vivid-chalk" "A dark color theme" t)
(autoload 'color-theme-tango-2 "color-theme-tango-2" "A dark color theme" t)
(color-theme-initialize)
;; (color-theme-pierson) ; Light, favourite
;; (color-theme-high-contrast)
;; (color-theme-snowish)
;; (color-theme-marquardt)
;; (color-theme-clarity) ; dark
;; (color-theme-dark-laptop) ; dark
;; (color-theme-billw) ; dark
;; (color-theme-oswald) ; dark
;; (color-theme-zenburn) ; dark, low contrast
;; (color-theme-standard)

(defun color-theme-my-vivid-chalk ()
  (interactive)
  (color-theme-vivid-chalk)
  (set-face-attribute 'highlight nil :background "white" :foreground "black"))

(defun color-theme-my-zenburn-low-contrast ()
  (interactive)
  (color-theme-zenburn)
  (set-face-attribute 'default nil :background "#1f1f1f"))


(defun apply-best-color-theme-for-frame-type (frame)
  (preserving-default-font-size
   (funcall (if window-system
		*window-system-color-theme*
	      *tty-color-theme*))))

(setq color-theme-is-cumulative nil)
(set-variable 'color-theme-is-global nil)
(add-hook 'after-make-frame-functions 'apply-best-color-theme-for-frame-type)
(apply-best-color-theme-for-frame-type (selected-frame))

(provide 'init-themes)