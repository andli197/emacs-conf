(use-package company
  :config
  (global-company-mode)
  (global-set-key (kbd "C-<tab>") 'company-complete)
  (add-hook 'c++-mode-hook '(lambda () (add-to-list 'company-backends 'company-gtags))))

(provide 'setup-company)
