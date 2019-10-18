" Vim file type detection file
" Language:    Dart
" Maintainer:  Eugene Ciurana <dart.syntax AT cime.net>
" Version:     1.0
" Source:      https://github.com/pr3d4t0r/dart-vim-syntax
" Updates:     https://github.com/vim/vim/blob/master/contributing.md
"
" License:     Vim is Charityware.  dart.vim syntax is Charityware.
"              (c) Copyright 2019 by Eugene Ciurana / pr3d4t0r.  Licensed
"              under the standard VIM LICENSE - Vim command :help uganda.txt
"              for details.
"
" Questions, comments:  <dart.syntax AT cime.net>
"                       https://ciurana.eu/pgp, https://keybase.io/pr3d4t0r
"
" vim: set fileencoding=utf-8:

" Include the Vim code snippet in the $VIM_FORK_PAT/runtime/filetype.vim
" file.

" ---------------- Begin snippet ----------------
" Dart
au BufRead,BufNewfile *.dart setf dart
au BufRead,BufNewfile *.drt  set dart
" ---------------- End snippet ----------------

