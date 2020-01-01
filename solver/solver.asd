(in-package :cl-user)
(defpackage solver-asd
  (:use :cl :asdf))
(in-package :solver-asd)

#+sbcl(setf sb-impl::*default-external-format* :utf-8)
#+sbcl(setf sb-alien::*default-c-string-external-format* :utf-8)

(defsystem solver
  :version "0.1"
  :author "Windymelt"
  :license "MIT"
  :class :package-inferred-system
  :defsystem-depends-on (:asdf-package-system)
  :depends-on (:cl-annot :solver/all)
  :pathname "src"
  :description "Factorio bandwidth solver")

(register-system-packages :cl-annot '(annot.class))
