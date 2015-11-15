(in-package :papaya)

(defroute (:get "/") (request response))

(defroute (:get "/audience") (request response))

(defroute (:get "/audience/pick") (request response))

(defroute (:get "/presenter") (request response))

(defroute (:get "/presenter/prepare") (request response))

(defroute (:post "/presenter/prepare") (request response))

(defroute (:get "/presenter/request") (request response))
