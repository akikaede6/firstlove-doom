                                        ;-*- lexical-binding: t; -*-
(map! :prefix uos/leader
      :map general-override-mode-map
      :n "ebb" #'eaf-open-browser
      :n "ebh" #'eaf-open-browser-with-history
      :n "ec" #'eaf-open-camera
      :n "et" #'eaf-open-terminal
      :n "s" #'evil-snipe-s)

(use-package! eaf
  :load-path "~/projects/github/emacs-application-framework"
  :custom
  (eaf-find-alternate-file-in-dired t)
  :config
  (setq eaf-proxy-type "socks5")
  (eaf-setq eaf-browse-default-zoom "1.5")
  (add-to-list 'evil-emacs-state-modes 'eaf-mode)
  (setq eaf-proxy-host "127.0.0.1")
  (setq eaf-proxy-port "1092")
  (eaf-bind-key scroll_up "RET" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down_page "DEL" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  (eaf-bind-key take_photo "p" eaf-camera-keybinding))
