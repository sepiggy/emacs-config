(when *is-mac*
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super))

(defun jkl-open-init-file()
  (interactive)
  (find-file "~/.emacs.d/lisp"))

(global-set-key (kbd "<f1>") 'jkl-open-init-file)

(global-set-key (kbd "<f12>") 'restart-emacs)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-keyboard)
