(use-package gruvbox-theme
  :init (load-theme 'gruvbox-dark-soft t))

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	sml/theme 'respectful)
  (sml/setup))

;; see https://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :font "Source Code Pro" :height 160)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)

(use-package ivy-posframe
  :init
  (setq ivy-posframe-display-functions-alist
	'((swiper . ivy-posframe-display-at-frame-center)
	  (complete-symbol . ivy-posframe-display-at-point)
	  (counsel-M-x . ivy-posframe-display-at-frame-center)
	  (counsel-find-file . ivy-posframe-display-at-frame-center)
	  (ivy-switch-buffer . ivy-posframe-display-at-frame-center)
	  (t . ivy-posframe-display-at-frame-center))))

(provide 'init-ui)
