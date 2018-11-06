scriptencoding utf-8

" 読み込み制御用の変数がすでに存在していたら、もうすでに読み込み済みと判断して終了する
if exists('g:loaded_memovim')
    finish
endif
let g:loaded_memovim = 1

" ユーザー設定の停止
let s:save_cpo = &cpo
set cpo&vim

" PHPの型を作成
function! s:PHPBox(line)
    :let input = "<?php\n\t\n?>"
    :let pos = getpos(".")
    :execute ":normal i" . input
    :call setpos('.', pos)
endfunction

" PHPの型を呼び出し
command! -nargs=0 PHP call s:PHPBox(getline('.')) 

" ユーザー設定の再開
let &cpo = s:save_cpo
unlet s:save_cpo
