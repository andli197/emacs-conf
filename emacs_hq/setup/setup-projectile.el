(use-package projectile
  :config
  (add-hook 'after-setup-hook 'projectile-mode)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (use-package ibuffer-projectile))

(provide 'setup-projectile)
