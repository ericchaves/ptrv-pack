(require 'edit-server)
(edit-server-start)

(setq edit-server-url-major-mode-alist
      '(("github\\.com" . markdown-mode)))
