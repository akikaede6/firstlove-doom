;;; mylang/lsp/config.el -*- lexical-binding: t; -*-

(after! lsp-mode
  (setq lsp-auto-guess-root t lsp-eldoc-prefer-signature-help nil)
  ;; (setq lsp-enable-links nil)
  (setq lsp-enable-file-watchers nil)
  (setq lsp-keep-workspace-alive nil)
  )
(after! lsp-ui

  (setq lsp-ui-doc-enable 't)
  )
