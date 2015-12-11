# some more ls aliases
alias ll='ls -alF'
alias la='ls -lA'
alias l='ls -CF'
alias fucking='sudo'
alias up='cd ..'

# BEGIN: CS712 tscript execute alias -------------------------------------
TSCRIPT_FOLDER='/home/wsk4/code/cs712-compilers/pp1/tscript'
TSCRIPT_BUILD_BIN="$TSCRIPT_FOLDER/build/bin"
# tscript itself
alias tscript='bash $TSCRIPT_BUILD_BIN/ts'
# tscript debug execute alias
alias tscript_db='bash $TSCRIPT_BUILD_BIN/tsdb'
# tscript AST to HTML alias
alias tscript_ast='bash $TSCRIPT_BUILD_BIN/ts -AST'
# java code compile
alias tscript_jc='bash $TSCRIPT_BUILD_BIN/jc'
# to run the previous generated
alias tscript_j='bash $TSCRIPT_BUILD_BIN/j'
# to run debug on the previous generated
alias tscript_j='bash $TSCRIPT_BUILD_BIN/jdebug'
# END: CS712 tscript execute alias ---------------------------------------
