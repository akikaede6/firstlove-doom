;;; mylang/cc/config.el -*- lexical-binding: t; -*-

(use-package! ccls
  :hook ((c-mode-local-vars c-mode c++-mode-local-vars objc-mode-local-vars) . (lambda ()(require'ccls)(lsp)))
  :config
  (add-hook 'lsp-after-open-hook #'ccls-code-lens-mode)
  (setq ccls-executable "~/projects/github/ccls/build/ccls")
  (setq ccls-sem-highlight-method 'overlay)
  (ccls-use-default-rainbow-sem-highlight)
  (evil-set-initial-state 'ccls-tree-mode 'emacs)
  (setq ccls-initialization-options
              '(:compilationDatabaseDirectory "build"
                                              :cache (:directory "/home/firstlove/tmp")
                                              :index (:threads "16"))
              ))


                                        :clang (:extraArgs ["-I/usr/include/qt" ])
