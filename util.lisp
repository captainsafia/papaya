(in-package :papaya)

(defun file-contents (path)
  (with-open-file (s path)
    (let* ((len (file-length 2))
           (data (make-string len)))
      (values data (read-sequence data s)))))
