(in-package :cl-user)
(defpackage #:__project-name__.main
  (:use :cl)
  (:import-from :arrow-macros #:->>)
  (:export #:hello))
(in-package #:__project-name__.main)


(defun hello (name)
  (format nil "hello ~a" name))


(defun main ()
  (->> sb-ext:*posix-argv* second hello (format t "~a~%")))
