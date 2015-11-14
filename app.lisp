(defpackage :papaya
    (:use :cl :wookie))

(in-package :papaya)

(load-plugins)

(defroute (:get "/") (request response))

(defroute (:get "/audience") (request response))

(defroute (:get "/audience/pick") (request response))

(defroute (:get "/presenter") (request response))

(defroute (:get "/presenter/request") (request response))
