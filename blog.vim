let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/Learning/Personal\ Files/antble.github.io
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd index.html
edit index.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 120 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 119 + 136) / 272)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("blog/index.html") | buffer blog/index.html | else | edit blog/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((18 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 014|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 120 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 119 + 136) / 272)
tabnext 1
badd +13 index.html
badd +52 cv/index.html
badd +2 about/index.html
badd +20 blog/index.html
badd +12 _posts/2016-07-16-test-site.md
badd +2 _posts/2017-09-03-how-to-learn-almost-anything.md
badd +1 _posts/2017-09-07-fundamentals-of-programming.md
badd +24 _posts/2017-09-12-deep-learning-coursera.md
badd +1 _posts/2018-01-04-Topographic-Map-Grabber.md
badd +1 js/katex_render.js
badd +2 math/index.html
badd +1 README.md
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
