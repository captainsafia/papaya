(in-package :papaya)

(defun page-not-found (response)
  (send-response response
                 :status 404
                 :body (layout 'default (list :content "Page not found."
                                              :title "Page not found."))))

(clear-routes)

(defroute (:get "/") (request response)
    (let ((body (load-view :content/index)))
      (send-response response :headers '(:content-type "text/html") :body body)))

(defroute (:get "/audience") (request response))

(defroute (:get "/audience/pick") (request response))

(defroute (:get "/presenter") (request response))

(defroute (:get "/presenter/prepare") (request response))

(defroute (:post "/presenter/prepare") (request response))

(defroute (:get "/presenter/request") (request response))
