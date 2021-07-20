
(in-package :cl-user)
(defpackage :cl-memo-asd
  (:use :cl :asdf))
(in-package :cl-memo-asd)

(defsystem :cl-memo
  :class :package-inferred-system
  :description "Memo app"
  :version "0.0.1"
  :author "Takuya Mannami"
  :license "MIT"
  :depends-on ("cl-memo/main"))
