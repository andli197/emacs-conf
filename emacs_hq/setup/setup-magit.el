(use-package magit
  :config
  (global-set-key (kbd "C-c m s") 'magit-status)
  (global-set-key (kbd "C-c m l") 'magit-log)
  (global-set-key (kbd "C-c m c") 'magit-checkout)
  (global-set-key (kbd "C-c m r") 'magit-rebase)
  (global-set-key (kbd "C-c m R") 'magit-rebase-continue))

(provide 'setup-magit)  
