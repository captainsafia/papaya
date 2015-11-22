(in-package :papaya)

(deflayout base (data :top-level t)
    (:html
      (:head
        (:title (str (conc (getf data :title) " | Papaya ")))
        (:link :rel "stylesheet" :href "styles/bootstrap.min.css"))
      (:body :class (getf data :body-class)
        (str (getf data :content)))))

