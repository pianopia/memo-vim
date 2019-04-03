scriptencoding utf-8

" plugin以下のスクリプトが読み込まれていないと判断できるため、終了する。
if !exists('g:memovim')
    finish
endif
let g:memovim = 1

" ユーザー設定の停止
let s:save_cpo = &cpo
set cpo&vim

" メモ用の線を引く
function! memo#Hr(line)
    :let input = "============================================================\n#"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction


" 細い線を引く
function! memo#Hrt(line)
    :let input = "------------------------------------------------------------\n"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" Vimコマンドのチートシート
function! memo#Alias(line)
    :let input = "$ HR\n$ Alias\n$ HTML\n$ Table\n$ Pycome\n"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" HTMLの型を作成
function! memo#HTMLBox(line)
    :let input = "<DOCTYPE! html>\n<html lang=\"ja\">\n\t<head>\n\t</head>\n\t<body>\n\t</body>\n<html>"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" Pythonのコメント
function! memo#Pycome(line)
    :let input = "################################################################\n#"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" テーブルを作成
function! memo#TableBox(line)
    :let input = "| 1 | 2 | 3 |\n|--+--+--|\n| | |"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction


"dein.toml用コマンド
function! memo#TomlPlugins(line)
    :let input = "[[plugins]] # comment\nrepo = ''"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" PHPの型を作成
function! memo#PHPBox(line)
    :let input = "<?php\n\t\n?>"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" ユーザー設定再開
let &cpo = s:save_cpo
unlet s:save_cpo
