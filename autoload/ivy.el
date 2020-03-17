;;; ~/.config/doom/autoload/ivy.el -*- lexical-binding: t; -*-

(defun counsel-yank-bash-history ()
  "Yank the bash history"
  (interactive)
  (let (hist-cmd collection val)
    (shell-command "history -r") ; reload history
    (setq collection
          (nreverse
           (split-string (with-temp-buffer (insert-file-contents (file-truename "~/.bash_history"))
                                           (buffer-string))
                         "\n"
                         t)))
    (when (and collection (> (length collection) 0)
               (setq val (if (= 1 (length collection)) (car collection)
                           (ivy-read (format "Bash history:") collection))))
        (kill-new val)
        (message "%s => kill-ring" val))))
