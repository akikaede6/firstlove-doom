;;; tools/pass/config.el -*- lexical-binding: t; -*-

(use-package lastpass
  :defer t
  :config
  ;; Set lastpass user
  (setq lastpass-user "czxyl@@protonmail.com")
  ;; Enable lastpass custom auth-source
  (lastpass-auth-source-enable))
