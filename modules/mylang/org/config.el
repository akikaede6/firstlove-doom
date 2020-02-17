;;; mylang/org/config.el -*- lexical-binding: t; -*-

(use-package! org-protocol
  :config
  (add-to-list 'org-capture-templates
               '("w" "org-protocol" entry (file "~/projects/org/refile.org")
                 "* TODO Review %a\n%U\n%:initial\n" :immediate-finish t))
  (setq org-protocol-default-template-key "w")
  )

(after! deft
  (setq deft-directory (expand-file-name "deft/" org-directory)))


(setf (alist-get 'file org-link-frame-setup) #'uos/org-open-other-workspace)

(add-to-list 'org-modules 'org-protocol t)

;;; :lang org
(setq org-directory "~/projects/org/"
      org-archive-location (concat org-directory "archive/%s::")
      org-ellipsis " ▼ "
      org-bullets-bullet-list '("☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷" "☷" "☷" "☷"))

(after! org-journal
  (add-to-list 'org-agenda-files org-journal-dir)
  (setq org-agenda-file-regexp "\\`\\\([^.].*\\.org\\\|[0-9]\\\{8\\\}\\\(\\.gpg\\\)?\\\)\\'")
  (setq org-journal-enable-agenda-integration t)
  (setq org-journal-enable-encryption t)
  )

(map!
 (
  :map general-override-mode-map
  :prefix uos/leader
  (
   (:prefix ("n" . "notes")
     (:prefix ("c" . "en/decrypt")
       :n      "e" #'org-encrypt-entry
       :n "d" #'org-decrypt-entry)))))