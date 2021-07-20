(in-package :cl-user)
(defpackage :cl-memo
  (:use :cl)
  (:export :memo))

(in-package :cl-memo)

(defun memo (file)
  (if file
      (with-open-file (out file :direction :output :if-exists :append :if-does-not-exist :create)
        (loop for input = (read-line *standard-input*)
              while input
              when (string= input ":exit")
                return 'exit
              do (write-line input out)))))
