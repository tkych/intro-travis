(asdf:defsystem #:intro-travis-test
  :description "Test for Introduction of Travis CI to CL"
  :licence     "Public Domain"
  :depends-on  (#:intro-travis #:fiveam)
  :author      "Takaya OCHIAI <tkych.repl@gmail.com>"
  :components  ((:file "test")))
