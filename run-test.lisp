(ql:quickload :prove)
(setf prove:*enable-colors* t)
(if (prove:run :__project-name__/test)
    (sb-ext:exit :code 0)
    (sb-ext:exit :code 1))
