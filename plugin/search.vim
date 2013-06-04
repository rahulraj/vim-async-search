" File: search.vim
" Author: Rahul Rajagopalan
" Description: Bindings to run search tools from Vim asynchronously
" Last Modified: June 04, 2013

function! RunSearch(search_term)
  let command = "Dispatch ag --nogroup --nocolor --column " . a:search_term . "./"
  execute command
endfunction
