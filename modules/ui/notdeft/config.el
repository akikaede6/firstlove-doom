;;; ui/deft/config.el -*- lexical-binding: t; -*-

(use-package! notdeft
  :commands notdeft
  :init
  :config
  (setq notdeft-directories '("~/projects/org/notdeft"))
  ;; (add-to-list 'notdeft-extensions "tex")

  (add-hook 'notdeft-mode-hook #'doom-mark-buffer-as-real-h)
  ;; start filtering immediately
  (set-evil-initial-state! 'notdeft-mode 'insert)
  (map! :map notdeft-mode-map
        :n "gr"  #'notdeft-refresh
        :n "C-s" #'notdeft-filter
        :i "C-n" #'notdeft-new-file
        :i "C-m" #'notdeft-new-file-named
        :i "C-d" #'notdeft-delete-file
        :i "C-r" #'notdeft-rename-file
        :n "r"   #'notdeft-rename-file
        :n "a"   #'notdeft-new-file
        :n "A"   #'notdeft-new-file-named
        :n "d"   #'notdeft-delete-file
        :n "D"   #'notdeft-archive-file
        :n "q"   #'kill-current-buffer
        :localleader
        "RET" #'notdeft-new-file-named
        "a"   #'notdeft-archive-file
        "c"   #'notdeft-filter-clear
        "d"   #'otdeft-delete-file
        "f"   #'notdeft-find-file
        "g"   #'notdeft-refresh
        "l"   #'notdeft-filter
        "n"   #'notdeft-new-file
        "r"   #'notdeft-rename-file
        "s"   #'notdeft-toggle-sort-method
        "t"   #'notdeft-toggle-incremental-search)

  )
