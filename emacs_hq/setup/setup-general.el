(electric-pair-mode 1)
(global-subword-mode 1)
(delete-selection-mode 1)
(global-hl-line-mode 1)
(show-paren-mode 1)
(save-place-mode 1)
(column-number-mode 1)
(global-auto-revert-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p)
(blink-cursor-mode 0)
(setq-default indent-tabs-mode nil)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-splash-screen t)

(use-package cyberpunk-theme
  :config
  (load-theme 'cyberpunk t))

(global-set-key (kbd "M-+") 'text-scale-increase)
(global-set-key (kbd "M-0") 'text-scale-decrease)

(provide 'setup-general)
