(setq py-install-directory "~/.emacs.d/python-mode.el-6.1.0")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

(setq line-number-mode t)
(setq column-number-mode t)

(add-hook 'find-file-hook (lambda () (linum-mode 1)))
(global-linum-mode 1)
