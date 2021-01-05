(defun user/file-exist (file-path)
  (and file-path (file-directory-p file-path)))

(defun user/crete-folder (file-path)
  (when (y-or-n-p (format "expected '%s' was not accessable, create it?" file-path))
    (make-directory file-path "parents")
    (when (user/file-exist file-path)
      (message "%s created!" file-path)
      t)))

(defun user/file-exist-create (file-path)
  (or (user/file-exist file-path)
      (user/create-folder file-path)))

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-language-environment-coding-systems "UTF-8")
(prefer-coding-system 'utf-8)

(setq emacs-hq (file-name-as-directory (or (getenv "EMACS_HQ") "~/.emacs.d/")))

(if (user/file-exist-create emacs-hq)
    (progn
      (setq user-init-file (concat emacs-hq "init.el"))
      (setq user-emacs-directory emacs-hq)        
      (with-temp-message (format "Emacs HQ: %s" emacs-hq))
      (setq package-user-dir (file-name-as-directory (concat emacs-hq "packages")))

      (require 'package)
      (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
      (package-initialize)

      (when (not package-archive-contents)
        (package-refresh-contents))

      (unless (package-installed-p 'use-package)
        (package-install 'use-package)
        (setq use-package-always-ensure t))

      (defun find-init-file ()
        (interactive)
        (find-file user-init-file))

      (defun load-init-file ()
        (interactive)
        (load-file user-init-file))

      (global-set-key (kbd "C-§") 'find-init-file)
      (global-set-key (kbd "C-½") 'load-init-file)
      (load-init-file)))

