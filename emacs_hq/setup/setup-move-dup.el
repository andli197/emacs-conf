(use-package move-dup
  :config
  (global-set-key (kbd "M-p") 'md-move-lines-up)
  (global-set-key (kbd "M-n") 'md-move-lines-down)
  (global-set-key (kbd "C-c M-p") 'md-duplicate-up)
  (global-set-key (kbd "C-c M-n") 'md-duplicate-down))

(provide 'setup-move-dup)
