;;; mylang/cc/config.el -*- lexical-binding: t; -*-

(use-package! ccls
  :hook ((c-mode-local-vars c-mode c++-mode-local-vars objc-mode-local-vars) . (lambda ()(require'ccls)(lsp)(modify-syntax-entry ?_ "w")))
  :config
  (add-hook 'lsp-after-open-hook #'ccls-code-lens-mode)
  (setq ccls-executable "~/projects/github/ccls/build/ccls")
  (setq ccls-sem-highlight-method 'overlay)
  (ccls-use-default-rainbow-sem-highlight)
  (evil-set-initial-state 'ccls-tree-mode 'emacs)
  (setq ccls-initialization-options
        '(:compilationDatabaseDirectory "build"
                                        :clang (:extraArgs ["-I/usr/include/qt" ]
                                                           :excludeArgs
                                                           ;; Linux's gcc options. See ccls/wiki
                                                           ["-falign-jumps=1" "-falign-loops=1" "-fconserve-stack" "-fmerge-constants" "-fno-code-hoisting" "-fno-schedule-insns" "-fno-var-tracking-assignments" "-fsched-pressure"
                                                            "-mhard-float" "-mindirect-branch-register" "-mindirect-branch=thunk-inline" "-mpreferred-stack-boundary=2" "-mpreferred-stack-boundary=3" "-mpreferred-stack-boundary=4" "-mrecord-mcount" "-mindirect-branch=thunk-extern" "-mno-fp-ret-in-387" "-mskip-rax-setup"
                                                            "--param=allow-store-data-races=0" "-Wa arch/x86/kernel/macros.s" "-Wa -"]
                                                           )
                                        :cache (:directory "/home/firstlove/tmp")
                                        :index (:threads 16)
                                        )
        ))
