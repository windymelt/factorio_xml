(in-package :cl-user)

(defpackage :solver/main
  (:use :cl :solver/gps))
(in-package :solver/main)

;;; Bandwidth solver

'(:source :copper-ore :belt 20)
'(:demand :belt :both-side :copper-plate)
; =>
'(:belt :both-side :copper-plate)
'(:iron-furnance 20)
'(:fast-inserter 20)
'(:belt 20) ;; it satisfies source. end.

(defparameter *ops*
  (list (op 'hop
            :preconds '(standing)
            :add-list '(hopping)
            :del-list '(standing))
        (op 'step
            :preconds '(hopping)
            :add-list '(stepping)
            :del-list '(hopping))
        (op 'jump
            :preconds '(stepping)
            :add-list '(jumping)
            :del-list '(stepping))))

(defun do-gps ()
  (gps '(standing) '(jumping) *ops*))
