;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Code from Paradigms of Artificial Intelligence Programming
;;; Copyright (c) 1991 Peter Norvig

;;;; File gps1.lisp: First version of GPS (General Problem Solver)
(in-package :cl-user)
(defpackage :solver/gps1
  (:use :cl :solver/gps-aux :annot.class))
(in-package :solver/gps1)

(annot:enable-annot-syntax)

