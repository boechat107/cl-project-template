# Common Lisp Project Template

This is my template project for Common Lisp applications.

The project includes my preferred libraries for day-by-day tasks and scripts to
run the tests and build a standalone executable (SBCL).

## Usage

1. Clone this repository
2. Use `sed` to replace the project name:

```bash
grep -rl '__project-name__' cl-project-template | xargs sed -i 's/__project-name__/PROJECT-NAME/g'
```

3. Rename the file **__project-name__.asd** to your real project name
   **PROJECT-NAME.asd**
4. Rename the project directory

## Preferred Libraries

* [jonathan](https://github.com/Rudolph-Miller/jonathan): JSON encoder/decoder.
* [arrow-macros](https://github.com/hipeta/arrow-macros): Clojure-like arrow
    macros.
* [cl-ppcre](https://github.com/edicl/cl-ppcre): regular expression library that
    provides very useful functions like `split` strings.
* [alexandria](https://gitlab.common-lisp.net/alexandria/alexandria): collection
    of utilities.
* [let-plus](https://github.com/tpapp/let-plus): destructuring extension of
    `let*` (Clojure-like `let`).
* [dexador](https://github.com/fukamachi/dexador): HTTP client.
* [local-time](https://github.com/dlowe-net/local-time): time manipulation
    library.
* [prove](https://github.com/fukamachi/prove): testing framework.
