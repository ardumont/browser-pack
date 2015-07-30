;;; browser-pack.el --- Browser manipulation

;;; Commentary:

;;; Code:

(use-package w3m)

(use-package browse-url
  :config
  (custom-set-variables '(browse-url-browser-function 'browse-url-firefox)
                        '(browse-url-generic-program "firefox")))

(use-package restclient)

(provide 'browser-pack)
;;; browser-pack.el ends here
