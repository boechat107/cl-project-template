#!/bin/bash
set -eo pipefail

TEMPLATE_DIR=cl-project-template

replace_str(){
    declare projname="$1"
    grep -rl '__project-name__' "$TEMPLATE_DIR" | \
       xargs sed -i "s/__project-name__/$projname/g"
}

mv_files(){
    declare projname="$1"
    mv "$TEMPLATE_DIR"/__project-name__.asd "$TEMPLATE_DIR"/"$projname".asd
    mv "$TEMPLATE_DIR" "$projname"
}

del_files(){
    declare projname="$1"
    rm -rf "$projname"/.git
    rm -f "$projname"/rename.sh
}

main(){
    declare projname="$1"
    replace_str "$projname"
    mv_files "$projname"
    del_files "$projname"
    git init "$projname"
}

main "$@"
