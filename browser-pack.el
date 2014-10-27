;;; browser-pack.el --- Browser manipulation

;;; Commentary:

;;; Code:

(require 'install-packages-pack)
(install-packages-pack/install-packs '(w3m))

(require 'browse-url)

(setq browse-url-browser-function 'browse-url-firefox
      browse-url-generic-program "firefox")

(provide 'browser-pack)
;;; browser-pack.el ends here
