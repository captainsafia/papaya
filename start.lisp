(load "~/quicklisp/setup.lisp")

(ql:quickload :papaya)

(let ((wookie-config:*debug-on-error* t))
  (papaya:start :port 9061))
