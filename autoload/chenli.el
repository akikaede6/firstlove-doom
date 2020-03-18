;;; ~/.config/doom/autoload/chenli.el -*- lexical-binding: t; -*-

;;;###autoload
(defun chunyang-toggle-frame-transparency ()
  (interactive)
  (if (equal (frame-parameter nil 'alpha) 85)
      (set-frame-parameter nil 'alpha 100)
    (set-frame-parameter nil 'alpha 85)))
