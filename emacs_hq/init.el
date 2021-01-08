
(add-to-list 'load-path (concat emacs-hq "setup"))

(require 'setup-company)
(require 'setup-flycheck)
(require 'setup-general)
(require 'setup-highlight-symbol)
(require 'setup-languages)
(require 'setup-magit)
(require 'setup-move-dup)
(require 'setup-smex)
(require 'setup-projectile)

(let ((start-time (time-subtract (current-time) emacs-start-time)))
  (setq initial-scratch-message
        (format ";; Emacs_HQ: %s\n;; Start time: %s ms"
                emacs-hq
                (format-time-string "%3N" start-time))))

