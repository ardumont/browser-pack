;;; browser-pack.el --- Browser manipulation

;;; Commentary:

;;; Code:

(require 'browse-url)
(custom-set-variables '(browse-url-browser-function 'browse-url-generic)
                      '(browse-url-generic-program (or (getenv "BROWSER") "qutebrowser")))

(require 'restclient)

(provide 'browser-pack)
;;; browser-pack.el ends here
