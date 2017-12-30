(in-package :cl-user)
(defpackage #:__project-name__.main
  (:use :cl)
  (:export #:hello))
(in-package #:__project-name__.main)


(defun hello (name)
  (format nil "hello ~a" name))
