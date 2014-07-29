(in-package #:cl-user)

(defpackage #:intro-travis-test
  (:use #:cl #:intro-travis #:fiveam)
  (:export #:run-tests))

(in-package #:intro-travis-test)

(def-suite ?intro-travis-test)
(in-suite ?intro-travis-test)

(defun run-tests ()
  (let* ((result-list  (run '?intro-travis-test))
         (total-result (every (lambda (r) (typep r 'fiveam::test-passed)) ; !
                              result-list)))
    (explain! result-list)
    total-result))

(test ?the-answer
  (is (= (the-answer) 42)))

