" ~/.vim/sessions/default.vim: Vim session script.
" Created by session.vim 1.4.20 on 01 November 2011 at 10:30:16.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egt
silent! set guifont=:Inconsolata:h14
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'wombat' | colorscheme wombat | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +121 Rails/pr/app/controllers/widget_controller.rb
badd +375 Rails/pr/public/widget/picket-widget.js
badd +1 Rails/pr/public/widget/widget.css
badd +1 Rails/pr/app/views/widget/index.html.erb
badd +2 Rails/pr/app/views/widget/single_school.html.erb
badd +1 Rails/pr/app/views/schools/_student_diversity.html.erb
silent! argdel *
set lines=76 columns=205
edit -TabBar-
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 38) / 76)
exe '2resize ' . ((&lines * 72 + 38) / 76)
exe 'vert 2resize ' . ((&columns * 139 + 102) / 205)
exe '3resize ' . ((&lines * 36 + 38) / 76)
exe 'vert 3resize ' . ((&columns * 65 + 102) / 205)
exe '4resize ' . ((&lines * 35 + 38) / 76)
exe 'vert 4resize ' . ((&columns * 65 + 102) / 205)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit Rails/pr/public/widget/picket-widget.js
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 654 - ((67 * winheight(0) + 36) / 72)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
654
normal! 0
wincmd w
argglobal
edit Rails/pr/public/widget/widget.css
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 333 - ((30 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
333
normal! 0
wincmd w
argglobal
edit Rails/pr/app/views/widget/index.html.erb
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 1 + 38) / 76)
exe '2resize ' . ((&lines * 72 + 38) / 76)
exe 'vert 2resize ' . ((&columns * 139 + 102) / 205)
exe '3resize ' . ((&lines * 36 + 38) / 76)
exe 'vert 3resize ' . ((&columns * 65 + 102) / 205)
exe '4resize ' . ((&lines * 35 + 38) / 76)
exe 'vert 4resize ' . ((&columns * 65 + 102) / 205)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
2wincmd w

" vim: ft=vim ro nowrap smc=128
