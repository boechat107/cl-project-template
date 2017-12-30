(defpackage #:__project-name__/test.main
  (:use :cl :prove :__project-name__.main))
(in-package #:__project-name__/test.main)

(plan nil)


(subtest "Hello test"
  (is (hello "Eric") "hello Eric")
      :test #'string=)


(finalize)
