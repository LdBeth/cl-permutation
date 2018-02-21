;;;; examples/misc.lisp
;;;;
;;;; Copyright (c) 2018 Robert Smith

(in-package #:cl-permutation-examples)

;;; Is there a name for this group?
;;;
;;;   1           4
;;;        <=> 
;;; 2   3       5   6
;;;
(defun make-bicycle (n)
  (let ((left-wheel (alexandria:iota n :start 1))
        (right-wheel (alexandria:iota n :start (1+ n))))
    (group-from-cycles
     (list
      (list (apply #'make-cycle left-wheel))
      (list (apply #'make-cycle right-wheel))
      (mapcar #'make-cycle left-wheel right-wheel))
     (* 2 n))))
