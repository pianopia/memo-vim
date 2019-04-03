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
command! -nargs=0 HR call memo#Hr(getline('.'))


" HTMLの型を作成
command! -nargs=0 HTML call memo#HTMLBox(getline('.'))

" Pythonコメント
command! -nargs=0 PyCM call memo#Pycome(getline('.'))

" テーブルを作成
command! -nargs=0 Table call memo#TableBox(getline('.'))  


"dein.toml用コマンド
command! -nargs=0 Plugins call memo#TomlPlugins(getline('.'))

" PHPの型を呼び出し
command! -nargs=0 PHP call memo#PHPBox(getline('.')) 

" ユーザー設定の再開
let &cpo = s:save_cpo
unlet s:save_cpo
