;;; This file re-exports all public symbols in :PROJECT/MAIN.
;;; This provides a syntax-sugar for package name.
;;; Because of this, client of this library can call symbol by `(project:main)`, not by `(project/main:main)`.

(in-package :cl-user)
(uiop/package:define-package :solver/all
  (:nicknames :solver)
  (:use-reexport :solver/main))
