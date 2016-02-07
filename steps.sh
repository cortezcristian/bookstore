#!/bin/bash
#
# Usage:
# $ bash steps.sh start 
#


# 1. Ionic Sidemenu App Generation 
# ======================================
function startproject {
    ionic start -a "Ionic Book Store" -i app.bookstore.ionic book-store sidemenu
}

# 2. Refactoring the template 
# ======================================
function refactortemplate {
    ionic start -a "Ionic Book Store" -i app.bookstore.ionic book-store sidemenu
}

# X. Detect Case 
# ======================================
echo "Resolving... $1"
case $1 in
  step1)
    startproject "$2" ${@:3}
    ;;
  step2)
    refactortemplate "$2" ${@:3}
    ;;
  *)
    echo $"Usage: $0 {step1|step2|help}"
    exit 1
esac