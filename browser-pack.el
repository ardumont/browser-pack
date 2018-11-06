;;; browser-pack.el --- Browser manipulation

;;; Commentary:

;;; Code:

(require 'w3m)

(require 'browse-url)
(custom-set-qvariables '(browse-url-browser-function 'browse-url-firefox)
		       '(browse-url-generic-program "firefox"))

(require 'restclient)

(provide 'browser-pack)
;;; browser-pack.el ends here
