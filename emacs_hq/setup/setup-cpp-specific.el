(add-to-list 'load-path (concat emacs-hq "lisp/cmake-mode"))
(add-to-list 'load-path (concat emacs-hq "lisp/fluent-mode"))

(require 'cmake-mode)
(require 'fluent-mode)

(cmake-mode t)
(fluent-mode t)

(defun cpp-custom-build-hooks ()
  (interactive)
  (concat "export LindbladBuildPath="
	  "~/work/code/cmake"))

(add-to-list 'fluent-prepend-compilation-commands 'cpp-custom-build-hooks)
(setq cmake-mode-generator "Unix Makefiles")

(provide 'setup-cpp-specific)
