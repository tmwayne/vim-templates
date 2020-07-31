""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TITLE: Templater
" DESCRIPTION: Load file specific templates on startup
" AUTHOR: Tyler Wayne (tylerwayne3@gmail.com)
" LAST MODIFIED: 2020-07-31
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let s:plugin_root = expand('<sfile>:p:h:h')

augroup templates
  autocmd!

  " Makefile
  autocmd BufNewFile ?akefile* silent!
    \ execute ":0read " . s:plugin_root . "/templates/Makefile"

  " Templates for basic code structure
  autocmd BufNewFile * silent! 
    \ execute ":0read " . s:plugin_root . "/templates/template.%:e"

  " Templates for testing
  autocmd BufNewFile test_* %d | silent! 
    \ execute ":0read " . s:plugin_root . "/templates/test_template.%:e"
augroup END

function! ReadSnippet(snippet)
  " Read in snippet while maintaining current indentation
  let l:saved_reg = @@

  " Save the current indentation
  normal! Y
  let l:cur_indent = matchstr(@@, '\v^\s*')

  execute ":silent! read " . a:snippet
  execute ":silent! '[,']s/\\v(.*)/" . l:cur_indent . "\\1"

  let @@ = l:saved_reg
endfunction
