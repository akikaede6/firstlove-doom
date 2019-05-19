;;; ~/.config/doom/autoload/hlissner.el -*- lexical-binding: t; -*-

;;;###autoload
(defun find-in-dotfiles ()
  "Open a file somewhere in ~/.dotfiles via a fuzzy filename search."
  (interactive)
  (doom-project-find-file (expand-file-name "~/.dotfiles")))

;;;###autoload
(defun browse-dotfiles ()
  "Browse the files in ~/.dotfiles."
  (interactive)
  (doom-project-browse (expand-file-name "~/.dotfiles")))

(defvar +hlissner--recording-frame nil)
;;;###autoload
(defun open-recording-frame ()
  "TODO"
  (interactive)
  (unless (frame-live-p +hlissner--recording-frame)
    (setq +hlissner--recording-frame
          (make-frame '((name . "emacs-floating")
                        (visibility . nil)
                        (no-other-frame . t)
                        (desktop-dont-save . t)))))
  (with-current-buffer (get-buffer-create "*recording*")
    (emacs-lisp-mode)
    (when (featurep 'solaire-mode)
      (setq doom-real-buffer-p t)
      (solaire-mode +1))
    (erase-buffer)
    (dotimes (_ 4)
      (insert "The quick brown fox jumps over the lazy dog\n"))
    (goto-char (point-min))
    (set-window-buffer (frame-root-window +hlissner--recording-frame)
                       (current-buffer)))
  (set-frame-size +hlissner--recording-frame 840 300 t)
  (doom-adjust-font-size 2 +hlissner--recording-frame)
  (unless (frame-visible-p +hlissner--recording-frame)
    (make-frame-visible +hlissner--recording-frame)
    (redraw-frame +hlissner--recording-frame)
    (with-selected-frame +hlissner--recording-frame
      (keycast-mode +1))))
