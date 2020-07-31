""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DESCRIPTION: Python specific mappings for Templater
" AUTHOR: Tyler Wayne (tylerwayne3@gmail.com)
" LAST MODIFIED: 2020-07-31
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let snippets_dir = expand("<sfile>:p:h:h") . "/snippets/"

nnoremap <buffer> <silent> <leader>doc
  \ :call ReadSnippet(s:snippets_dir . "docstr.py")<cr>
  " \ :echom "this"

" nnoremap <buffer> <silent> <localleader>arg
  " \ :call ReadSnippet(s:plugin_root . "/snippets/argparse.py")<cr>
" 
" nnoremap <buffer> <silent> <localleader>log
  " \ :call ReadSnippet(s:plugin_root . "/snippets/logging.py")<cr>
