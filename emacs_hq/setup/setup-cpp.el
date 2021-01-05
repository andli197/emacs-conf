;; (require 'setup-cpp-specific)

(use-package cff
  :config
  (add-hook 'c++-mode-hook
            '(lambda ()
               (define-key c-mode-base-map (kbd "M-o") 'cff-find-other-file)))
  (add-hook 'c-mode-hook
            '(lambda ()
               (define-key c-mode-base-map (kbd "M-o") 'cff-find-other-file))))

(use-package clang-format
  :config
  (setq clang-format-fallback-style "Google")
  (fset 'c-indent-region 'clang-format-region)
  (global-set-key (kbd "C-c c b") 'clang-format-buffer)
  (global-set-key (kbd "C-c c r") 'clang-format-region))

(provide 'setup-cpp)
