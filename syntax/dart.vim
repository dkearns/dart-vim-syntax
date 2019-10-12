" Vim syntax file
" Language:     Dart
" Maintainer:   Eugene 'pr3d4t0r' Ciurana <dart.syntax AT cime.net >
" URL:          https://github.com/pr3d4t0r/dart-vim-syntax
" Last Change:  20191002 - first release
"
" vim: set fileencoding=utf-8:


" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim


syn keyword dartCommentTodo     contained TODO FIXME XXX TBD
" syn match   dartLineComment     "\/\/.*" contains=@Spell,dartCommentTodo
syn match   dartLineComment     "//.*" contains=dartTodo,@Spell
syn match   dartCommentSkip     "^[ \t]*\*\($\|[ \t]\+\)"
syn region  dartComment         start="/\*"  end="\*/" contains=@Spell,dartTodo
syn keyword dartReserved        assert async await class const export extends external final hide import implements interface library mixin on show super sync yield
syn match   dartNumber          "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"

" Reserved words
syn keyword dartBoolean     false true
syn keyword dartBranch      break continue
syn keyword dartConditional if else switch
syn keyword dartException   catch finally rethrow throw try
syn keyword dartIdentifier  abstract covariant deferred dynamic factory Function operator part static this typedef var
syn keyword dartLabel       case default
syn keyword dartNull        null
syn keyword dartOperator    is new
syn keyword dartRepeat      for do in while
syn keyword dartStatement   return with 
syn keyword dartType        bool double enum int String StringBuffer void
syn keyword dartTodo        contained TODO FIXME XXX


" syn region dartString       start=+"+ end=+"+ end=+$+ contains=dartSpecialChar,dartSpecialError,@Spell
syn region dartString       start=+"+ end=+"+ end=+$+ contains=dartSpecialChar,dartSpecialError,@Spell
syn match  dartSpecialChar  contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)"
syn match  dartSpecialError contained "\\."


syn match dartBraces        "[{}\[\]]"
syn match dartParens        "[()]"


syn sync fromstart
syn sync maxlines=100


syn sync ccomment dartComment


hi def link dartBoolean         Boolean
hi def link dartBranch          Conditional
hi def link dartComment         Comment
hi def link dartConditional     Conditional
hi def link dartException       Exception
hi def link dartIdentifier      Identifier
hi def link dartLabel           Label
hi def link dartNull            Keyword
hi def link dartOperator        Operator
hi def link dartRepeat          Repeat
hi def link dartReserved        Keyword
hi def link dartSpecialChar     SpecialChar
hi def link dartSpecialError    Error
hi def link dartStatement       Statement
hi def link dartString          String
hi def link dartTodo            Todo
hi def link dartType            Type


let b:current_syntax = "dart"
let &cpo = s:cpo_save
unlet s:cpo_save

