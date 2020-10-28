(use-package restart-emacs)

(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

(use-package crux
  :bind ("C-c k" . crux-smart-kill-line))

(use-package hungry-delete
  :bind ("C-c d" . hungry-delete-backward)
  :bind ("C-c Backspace" . hungry-delete-forward))

(use-package drag-stuff
  :bind (("<M-up>" . drag-stuff-up)
	 ("<M-down>" . drag-stuff-down)))

 (use-package ivy
  :defer 1
  :demand
  :diminish
  :hook (after-init . ivy-mode)
  :config (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil
        ivy-count-format "%d/%d "
        enable-recursive-minibuffers t
        ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

(use-package counsel
  :after (ivy)
  :bind (("M-x" . counsel-M-x)
	     ("C-h b" . counsel-descbinds)
	     ("C-h f" . counsel-describe-function)
	     ("C-h v" . counsel-describe-variable)
         ("C-x C-f" . counsel-find-file)
         ("C-c f" . counsel-recentf)
         ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
                swiper-include-line-number-in-search t))

(use-package company
  :diminish (company-mode " Com.")
  :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
  :hook (after-init . global-company-mode)
  :config (setq company-dabbrev-code-everywhere t
		        company-dabbrev-code-modes t
		        company-dabbrev-code-other-buffers 'all
	                company-dabbrev-downcase nil
		        company-dabbrev-ignore-case t
		        company-dabbrev-other-buffers 'all
		        company-require-match nil
		        company-minimum-prefix-length 1
		        company-show-numbers t
		        company-tooltip-limit 20
		        company-idle-delay 0
		        company-echo-delay 0
		        company-tooltip-offset-display 'scrollbar
		        company-begin-commands '(self-insert-command)))

(use-package crux
  :bind (("C-a" . crux-move-beginning-of-line)
         ("C-c ^" . crux-top-join-line)
	     ("C-," . crux-find-user-init-file)
         ("C-S-d" . crux-duplicate-current-line-or-region)
         ("C-S-k" . crux-smart-kill-line)))

(use-package which-key
  :defer nil
  :config (which-key-mode))

(use-package company-prescient
  :init (company-prescient-mode 1))

(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(provide 'init-packages)

