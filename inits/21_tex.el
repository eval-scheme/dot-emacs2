;;; Code:
(use-package yatex
  :mode (("\\.tex\\'" . yatex-mode)
         ("\\.ltx\\'" . yatex-mode)
         ("\\.cls\\'" . yatex-mode)
         ("\\.sty\\'" . yatex-mode)
         ("\\.clo\\'" . yatex-mode)
         ("\\.bbl\\'" . yatex-mode))
  :bind (("C-c C-t" . YaTeX-typeset-menu))
  :init
  (setq YaTeX-inhibit-prefix-letter t)
  (setq YaTeX-nervous t)
  (setq YaTeX-use-LaTeX2e t)
  (setq YaTeX-use-AMS-LaTeX t)
  (when (executable-find "xelatex")
    (setq tex-command "xelatex -synctex=1")
    )
  (setq tex-command "latexmk")
  (when (package-installed-p 'yasnippet)
    (add-hook 'yatex-mode-hook 'yas-minor-mode)
    )
  (when (executable-find "evince")
    (setq dvi2-command "evince")
    (setq tex-pdfview-command "evince"))
  (setq YaTeX-kanji-code nil)
  (add-hook 'yatex-mode-hook 'turn-on-reftex)
  )
;;; 21_tex.el ends here
