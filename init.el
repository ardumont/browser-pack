(require 'browse-url)

(setq browse-url-browser-function 'browse-url-firefox
      browse-url-generic-program "/usr/bin/firefox")

;; (setq browse-url-browser-function 'browse-url-generic
;;       browse-url-generic-program "/usr/bin/google-chrome"
;;       browse-url-generic-args '("--no-proxy-server"))

(defun browser-pack/search (query-url prompt)
  "Open the search url constructed with the QUERY-URL.
PROMPT sets the `read-string prompt."
  (browse-url
   (concat query-url
           (url-hexify-string
            (if mark-active
                (buffer-substring (region-beginning) (region-end))
                (read-string prompt))))))

(defun browser-pack/search-duckduckgo ()
  (interactive)
  (browser-pack/search "https://duckduckgo.com/?t=lm&q=" "Search Duck Duck Go: "))

(defun browser-pack/search-google () "Googles a query or region if any."
  (interactive)
  (browser-pack/search "http://www.google.com/search?q=" "Search Google: "))

(defun browser-pack/search-youtube () "Search YouTube with a query or region if any."
  (interactive)
  (browser-pack/search "http://www.youtube.com/results?search_query=" "Search YouTube: "))

(defun browser-pack/search-github () "Search GitHub with a query or region if any."
  (interactive)
  (browser-pack/search "https://github.com/search?q=" "Search GitHub: "))
