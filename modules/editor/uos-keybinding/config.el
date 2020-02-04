;;; private/uos-keybinding/init.el -*- lexical-binding: t; -*-
;; (with-eval-after-load 'evil-maps
;;   (define-key evil-normal-state-map (kbd "s") 'nil))
;; (map! :map general-override-mode-map
;;       :nvm "<newleaderkey"> #'doom/leader
;;       :ei "<alternative-newleaderkey"> #'doom/leader)
(map!
 :prefix uos/leader
 :n "s" #'evil-snipe-s)
