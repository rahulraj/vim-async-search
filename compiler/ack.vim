" Vim compiler file
" Compiler:         ag (actually a searcher)
" Maintainer:       Rahul Rajagopalan <rahulrajago@gmail.com>
" Latest Revision:  2013-06-04

if exists("current_compiler")
  finish
endif
let current_compiler = "ack --nogroup --nocolor --column"

" CompilerSet boilerplate for older Vim
if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=ack\ --nogroup\ --nocolor\ --column
CompilerSet errorformat=%f:%l:%c:%m

let &cpo = s:cpo_save
unlet s:cpo_save
