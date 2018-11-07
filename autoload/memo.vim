scriptencoding utf-8

" plugin以下のスクリプトが読み込まれていないと判断できるため、終了する。
if !exists('g:memovim')
    finish
endif
let g:memovim = 1

" ユーザー設定の停止
let s:save_cpo = &cpo
set cpo&vim

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
