#!/usr/bin/sbcl --script

(load "quicklisp.lisp")
(quicklisp-quickstart:install)

(ql:quickload :intro-travis-test)

(if (intro-travis-test:run-tests)
    (sb-ext:quit :unix-status 0)
    (sb-ext:quit :unix-status 1))

