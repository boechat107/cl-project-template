sbcl_cmd := sbcl --disable-debugger --load
objects := __project-name__


all: $(objects)


$(objects): src/*.lisp
	$(sbcl_cmd) build-executable.lisp


check:
	$(sbcl_cmd) run-test.lisp


clean:
	rm -f $(objects)


.PHONY: check clean
