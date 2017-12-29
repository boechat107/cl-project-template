(ql:quickload :prove)  ; because of prove-asdf
(ql:quickload :__project-name__)
(in-package :__project-name__.main)
(sb-ext:save-lisp-and-die
 "__project-name__"
 :toplevel #'main :executable t :compression 9)
