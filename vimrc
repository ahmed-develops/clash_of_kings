"设置行号
set nu

"语法高亮
syntax on

"设置超过100字符就自动换行
set textwidth=100

"智能对其方式
set smartindent

"按一次tab 4个字符
set tabstop=4

"按一次tab前进4个字符
set softtabstop=4

"设置自动缩进
set ai!

"打开光标的行列位置显示功能
set ruler

"行高亮
set cursorline

"列高亮
"set cursorcolumn

"高亮搜索的关键字
"set hlsearch

"设置搜索关键字
set cmdheight=1

"设置命令行历史行数
set history=100

"设置VIM状态栏 
set laststatus=2 "显示状态栏(默认值为1, 无法显示状态栏) 
set statusline= 
set statusline+=%2*%-3.3n%0*\ " buffer number 
set statusline+=%f\ " file name 
set statusline+=%h%1*%m%r%w%0* " flag 
set statusline+=[ 
if v:version >= 600 
    set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype 
    set statusline+=%{&fileencoding}, " encoding 
endif 
set statusline+=%{&fileformat}] " file format 
set statusline+=%= " right align 
"set statusline+=%2*0x%-8B\ " current char 
set statusline+=0x%-8B\ " current char 
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset 
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim")) 
    set statusline+=\ %{VimBuddy()} " vim buddy 
endif 
"状态行颜色 
"highlight StatusLine guifg=SlateBlue guibg=Yellow 
"highlight StatusLineNC guifg=Gray guibg=White 
