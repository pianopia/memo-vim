scriptencoding utf-8

" plugin以下のスクリプトが読み込まれていないと判断できるため、終了する。
if !exists('g:memovim')
    finish
endif
let g:memovim = 1

" ユーザー設定の停止
let s:save_cpo = &cpo
set cpo&vim

" チートシート
function! memo#CheatSheet(line)
  let inputfile = "./template/cheatsheet.txt"
  :for line in readfile(inputfile)
    echo line
  :endfor
"    :echo "HR: 線\r\nHrt:細い線, Alias, HTMLBox, Pycome, TableBox, TomlPlugins, PHPBox"
endfunction

" メモ用の線を引く
function! memo#Hr(line)
    :let input = "============================================================\r\n#"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction


" 細い線を引く
function! memo#Hrt(line)
    :let input = "------------------------------------------------------------\r\n"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" Vimコマンドのチートシート
function! memo#Alias(line)
    :echo "$ HR\n"
        \ ."$ Alias\r\n"
        \ ."$ HTML\r\n"
        \ ."$ Table\r\n"
        \ ."$ Pycome\r\n"
endfunction

" HTMLの型を作成
function! memo#HTMLBox(line)
    :let inputfile = "./template/temp.html"
    :let pos = getpos(".")
    :execute ":normal i" . inputfile
    :call setpos('.', pos)
endfunction

" Pythonのコメント
function! memo#Pycome(line)
    :let input = "################################################################\r\n#"
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
    :let input = "[[plugins]] # comment"
              \ ."\nrepo = ''"
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

" 小説モード
function! memo#ColorToStory(line)
    :set background=light
    :hi clear
    :if exists("syntax_on")
    :   syntax reset
    :endif
    :set t_Co=256
endfunction

" ユーザー設定再開
let &cpo = s:save_cpo
unlet s:save_cpo
