;;; input/chinese/config.el -*- lexical-binding: t; -*-

(use-package! liberime-config
  :hook (liberime-after-start . (lambda ()
              (liberime-select-schema "luna_pinyin_simp")))
  )


(use-package! pyim
  :after liberime-config
  :config
  (require 'liberime)
  (setq default-input-method "pyim")
  (setq pyim-default-scheme 'rime)
  (setq pyim-page-length 9)
  (setq pyim-punctuation-translate-p '(no yes auto))
  (setq pyim-page-tooltip 'posframe)
  )
