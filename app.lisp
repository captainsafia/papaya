(in-package :papaya)

(setf cl-who:*attribute-quote-char* #\"
      (cl-who:html-mode) :html5)

(load-plugins :use-quicklisp t)

(defun (error-handler err &optional socket)
  (unless (typep error 'as-tcp-info)
    (format t "(papaya) Uncaught error: ~a~%" err)))

(defun start (&key bind (port 8080))
    (setf *log-level* :notice)
    (setf *error-handler* 'error-handler)
    (format t "Running application server on ~D~%" port)
    
    (load-views)

    (as:with-event-loop ()
        (let* ((listener (make-instance 'listener :bind bind :port port))
                (server (start-server listener)))
          (as:signal-handler 2
            (lambda (sig)
              (declare (ignore sig))
              (as:free-signal-handler 2)
              (as:close-tcp-server server)
              (as:exit-event-loop))))))
