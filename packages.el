;;; ~/.config/doom/packages.el

;; `doom-snippets' *is* my personal snippets library (in $DOOMDIR/snippets)
;; (package! doom-snippets :disable t)

;; I never use it.
;; (package! which-key :disable t)

;; For personal modeline
(package! anzu)
(package! evil-anzu)
(package! posframe)

(package! liberime-config
  :recipe
  (
   :host github
   :repo "merrickluo/liberime"
   :files ("CMakeLists.txt" "Makefile" "src" "liberime-config.el")))

(package! eaf
  :recipe
  (
   :host github
   :repo "manateelazycat/emacs-application-framework"
   :files ("*") ))

(package! awesome-tab
  :recipe
  (
   :host github
   :repo "manateelazycat/awesome-tab"))

(package! snails
  :recipe
  (
   :host github
   :repo "manateelazycat/snails"
   :no-byte-compile t
   :files ("*")
   ))

(package! awesomeshell
  :recipe
  (
   :host github
   :no-byte-compile t
   :repo "manateelazycat/aweshell"))

(package! ccls)

