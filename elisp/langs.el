;; Simple script

(setq js-indent-level 2)
(use-package js2-mode)
(use-package typescript-mode)
(use-package prettier-js)

(setq css-indent-offset 2)
(use-package rainbow-mode)

(use-package web-mode
  :mode ("\\.html\\'")
  :config
  (setq web-mode-markup-indent-offset 2))
(use-package emmet-mode
  :mode "\\.html?\\'"
  :config
  (add-hook 'sgml-mode-hook 'emmet-mode))

(use-package elm-mode)

(use-package go-mode)

(setq python-indent 4)
(use-package python
  :mode ("\\.py" . python-mode)
  :config
  (use-package elpy
    :init
    (add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
    :bind (:map elpy-mode-map
                ("M-." . elpy-goto-definition)
                ("M-," . pop-tag-mark)))
  (elpy-enable))
(use-package py-yapf)
(use-package py-isort)
(use-package virtualenvwrapper
  :config
  (setq venv-location "~/.virtualenvs"))

(provide 'langs)