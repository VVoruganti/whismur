if exists("g:loaded_whismur") | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user options
set cpo&vim " reset them to defaults

" command to run our plugin
command! whismur lua require'whismur'.whismur()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_whismur = 1

