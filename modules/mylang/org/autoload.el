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


;;;###autoload
(defun get-journal-file-today ()
  "Gets filename for today's journal entry."
  (let ((daily-name (format-time-string "%Y%m%d")))
    (expand-file-name (concat org-journal-dir daily-name))))

;;;###autoload
(defun journal-file-today ()
  "Creates and load a journal file based on today's date."
  (interactive)
  (find-file (get-journal-file-today)))

;;;###autoload
(defun get-journal-file-yesterday ()
  "Gets filename for yesterday's journal entry."
  (let* ((yesterday (time-subtract (current-time) (days-to-time 1)))
         (daily-name (format-time-string "%Y%m%d" yesterday)))
    (expand-file-name (concat org-journal-dir daily-name))))

;;;###autoload
(defun journal-file-yesterday ()
  "Creates and load a file based on yesterday's date."
  (interactive)
  (find-file (get-journal-file-yesterday)))
