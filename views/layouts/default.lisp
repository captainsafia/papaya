(in-package :papaya)

(deflayout default (data)
    (parent-layout 'base data
        (:content
          (:div :class "gutter clear"
                (str (getf data :content))))))
