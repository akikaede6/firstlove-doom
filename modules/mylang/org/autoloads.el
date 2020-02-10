;;; mylang/org/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defun uos/org-open-other-workspace(filename &optional wildcards)
  (require 'f)
  (setq project-name (f-filename (projectile-project-root filename)))
  (if (+workspace-exists-p project-name)
      (+workspace/switch-to project-name)
    (+workspace/new)
    (+workspace/rename (f-filename (projectile-project-root filename)))
    )
  (find-file filename)
  )

