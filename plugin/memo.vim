scriptencoding utf-8

" 読み込み制御用の変数がすでに存在していたら、もうすでに読み込み済みと判断して終了する
if exists('g:memovim')
    finish
endif
let g:memovim = 1

" ユーザー設定の停止
let s:save_cpo = &cpo
set cpo&vim


" 線を引く
function! s:Done(line)
    :let input = "============================================================\n#"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction
command! -nargs=0 HR call s:Done(getline('.'))


" HTMLの型を作成
function! s:HTMLBox(line)
    :let input = "<DOCTYPE! html>\n<html lang=\"ja\">\n\t<head>\n\t</head>\n\t<body>\n\t</body>\n<html>"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction
command! -nargs=0 HTML call s:HTMLBox(getline('.'))


" テーブルを作成
function! s:TableBox(line)
    :let input = "| 1 | 2 | 3 |\n|--+--+--|\n| | |"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction
command! -nargs=0 Table call s:TableBox(getline('.'))  


" PHPの型を作成
function! memo#PHPBox(line)
    :let input = "<?php\n\t\n?>"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

"dein.toml用コマンド
function! s:TomlPlugins(line)
    :let input = "[[plugins]] # comment\nrepo = ''"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction
command! -nargs=0 Plugins call s:TomlPlugins(getline('.'))

" PHPの型を呼び出し
command! -nargs=0 PHP call memo#PHPBox(getline('.')) 

" ユーザー設定の再開
let &cpo = s:save_cpo
unlet s:save_cpo
