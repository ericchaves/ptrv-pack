(require 'package)

(custom-set-variables
 '(package-user-dir "~/.live-packs/ptrv-pack/elpa"))

(dolist (source '(("melpa" . "http://melpa.milkbox.net/packages/")
                  ("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ("org" . "http://orgmode.org/elpa/")))
  (add-to-list 'package-archives source t))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(magit
                      auctex
                      wrap-region
                      go-mode
                      starter-kit-eshell
                      ack-and-a-half
                      flymake-cursor
                      smart-operator
                      multi-term
                      session
                      notify
                      edit-server
                      color-theme
                      org-plus-contrib
                      flycheck)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
