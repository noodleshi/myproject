
syntax on
set noswapfile
set number
"set ignorecase
"set mouse=a
set autoread
set history=1000
"set t_Co=254
"set t_Co=8
"set expandtab
"unenable complete
"set paste
set autoindent
set smartindent
set nowrap
"set sidescroll=10
set modifiable
set whichwrap=b,s
set shiftwidth=4
set tabstop=4
set softtabstop=4
"set tabstop=8
"set smarttab
set hls
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set scrolloff=8
set ruler
"set expandtab
"set autochdir
set hidden
set cmdheight=1
set laststatus=2    " always show the status line
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)
set nocompatible
set lbr
set tw=500
set wrap "Wrap lines"
set scrolloff=8
set showmatch "输入括号匹配
set formatoptions+=mM "正确处理中文折行和拼接
set wildmenu  "增强命令完成
set backspace=indent,eol,start
"set nocp
"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplorerMoreThanOne=0
"let g:miniBufExplModSelTarget=0
let g:miniBufExplMaxSize=2
nmap <leader>b1 :b1<cr>
nmap <leader>b2 :b2<cr>
nmap <leader>b3 :b3<cr>
nmap <leader>b4 :b4<cr>
nmap <leader>b5 :b5<cr>
nmap <leader>b6 :b6<cr>
nmap <leader>b7 :b7<cr>
nmap <leader>b8 :b8<cr>
nmap <leader>b9 :b9<cr> 

":colorscheme lilypink
:colorscheme desert
nmap wm : WMToggle<cr>
let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:AutoComplPop_MappingDriven = 1
set tags=tags
set csto=1
set cst
set nocsverb
":set cscopequickfix=s-,c-,d-,i-,t-,e-
":set cscopequickfix=g-,s-,e-
:set cscopequickfix=g-
"set cscopequickfix=t-,e-
"if has("cscope")
"    set csprg=/usr/bin/cscope
"    set csto=0
"    set cst
"    set nocsverb
"    if filereadable("cscope.out")
"        cs add cscope.out
"    elseif $CSCOPE_DB!= ""
"        cs add %CSCOPE_DB
"    endif
"    set csverb
"    set cscopetag
"endif

if getfsize("vimscript")>0
    source vimscript
endif


set ofu=syntaxcomplete#Complete
autocmd FileType python　set omnifunc=pythoncomplete#Complete
autocmd FileType python runtime! autoload/pythoncomplete.vim


"Doxygen
"map fg : Dox<cr>
let g:DoxygenToolkit_autorName="victor.g"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30

"nerd tree
nmap <F10> :NERDTreeToggle<cr>
nmap <silent> <leader>to :NERDTreeToggle<cr>
let NERDTreeWinPos='right'

" taglist
"let Tlist_ShowOne_File=1
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
let Tlist_Show_Menu=1         "显示taglist菜单
"let Tlist_Auto_Open=1    "启动vim自动打开taglist
"是否一致处理tags 1:process 0:no process
let Tlist_Process_File_Always=1
"让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
"let Tlist_Show_One_File=0 
"let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Auto_Update=1
"let TlistShowPrototype=1
"shortcut
"C-t       - goto definition of the funcions
"C-]       - go back to where you come from
"gd        - goto definition of a local viriable
"gD        - goto definition of a globle viriable
"C-i/C-o   - goto forward/backward of the check points
"#/*       - next/previous same word under cursor


"nerdcommenter.vim
"<leader> cc
"<leader> cs

"tagbar.vim
nmap tb :TagbarToggle<cr>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_left = 1
let g:tagbar_width = 25


"cscope setting
"set csto=1
"set cst
"set nocsverb
"set cscopequickfix=t-,e-
nmap <C-[>s :cs find s <C-R>=expand("<cword>")<cr><cr> 
nmap <C-[>g :cs find g <C-R>=expand("<cword>")<cr><cr> 
nmap <C-[>c :cs find c <C-R>=expand("<cword>")<cr><cr> 
nmap <C-[>t :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <C-[>e :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <C-[>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <C-[>i :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <C-[>d :cs find d <C-R>=expand("<cword>")<cr><cr>
"nmap <C-[>h :gr! <C-R>=expand("<cword>")<cr><cr>
"nmap <C-[>l :gr! <C-R>=expand("<cfile>")<cr><cr>
"nmap <C-[>j :FindMate <C-R>=expand("<cword>")<cr><cr>
nmap ;; :gr! <C-R>=expand("<cword>")<cr><cr>

function! SwFun1()
	:set gfm=%f
	"	:set gfm=%f:%l:%m
	":set grepprg=find\ .\ -regex\ \".*\\.\\(S\\\\\|s\\\\\|cc\\\\\|java\\\\\|cc\\\\\|c\\\\\|cpp\\\\\|h\\\\\|c\\)\"\ \\\|\ grep\ -i
	:set grepprg=cat\ cscope.files\ \\\|\ grep\ -i
	":set grepprg=cat\ ptags\ \\\|\ grep\ -i
endfunction

function! SwFun2()
	:se gfm=%f:%l:%m
	:set grepformat=%f:%l:%m
"	:set grepprg=grep\ -nri\ --include=*.[c,h,cpp,cc,java,s,S,] 
	:set grepprg=find\ .\ -regex\ \".*\\.\\(S\\\\\|s\\\\\|cc\\\\\|java\\\\\|cc\\\\\|c\\\\\|cpp\\\\\|h\\\\\|c\\)\"\ \\\|\ xargs\ grep\ -n
endfunction

function! SwPtag()
	:set gfm=%f:%l:%m
	:set grepprg=cat\ ptags\ \\\|\ grep\ -i
endfunction
command! -nargs=0 SwPtag :call SwPtag()

let g:flags=1
function! ToggleFun()
	if g:flags==1
		:call SwFun1()
		let g:flags=0
	else
		:call SwFun2()
		let g:flags=1
	endif
endfunction

nmap <leader>tf :call ToggleFun()<cr>

"grep search
" :colder :cnewer
":set grepprg=grep\ --color\ -nri\ --include=*.[c,h,cpp,cc,java,s,S,]
:set grepprg=cat\ cscope.files\ \\\|\ xargs\ grep\ -n

"map <F5> : !python %
"python
"let g:pydiction_location = '/home/vi/.vim/tools/pydirction/complete-dict'
"vim wiki
"map <Leader>w <Plug>VimwikiIndex
"map <F4> : Vimwiki2HTML <cr>
"let g:vimwiki_list = [{'path': '/mnt/hgfs/Dropbox/dropboxShare/vimwiki/vimwiki/',
"	    \ 'path_html': '/mnt/hgfs/Dropbox/dropboxShare/vimwiki/vimwiki/html/',
"	    \ 'html_header' : '/mnt/hgfs/Dropbox/dropboxShare/vimwiki/vimwiki/header.tpl'}]
"let g:vimwiki_camel_case = 0
"let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre'

"keyboard map
"map <F5> : Calendar <cr>
map <F6> : ConqueTerm bash <cr>
nmap <leader>ct :ConqueTerm bash<cr>

nmap <leader>d :bdelete<cr>:bp<cr>

nmap <C-j> :wincmd j<cr>
nmap <C-k> :wincmd k<cr>
nmap <C-h> :wincmd h<cr>
nmap <C-l> :wincmd l<cr>

nmap <C-m> :bn<cr>
nmap <C-n> :bp<cr>

nmap <C-u> :cp<cr>
nmap <C-i> :cn<cr>

nmap <leader>_ :res -1<cr>
nmap <leader>+ :res +1<cr>

nmap tt <C-T>
nmap ff <C-]>

nmap tf <C-f>
nmap ft <C-b>

nmap <leader>f <C-f>
nmap <leader>g <C-b>

"FindMate.vim shortcut
map <leader>,, :call FindMate()<cr>
"toggle minibuffer windows
nmap <Leader>u :TMiniBufExplorer<cr>
nmap tg :Tlist<cr>

nmap mm <C-h>k<cr>
nmap ,, <C-h>j<cr>

nmap ts <C-h><C-l>

"highlight currentline
"set cursorline
"set cursorcolumn

function! DoFind()
    !find . -name \*.c -o -name \*.h -o -name \*.cxx -o -name \*.cpp -o -name \*.cc -o -name \*.java -o -name \*.s -o -name \*.S -o -name \*.s > cscope.files
endfunction
function! DoClang()
	!find . -name \*.h | sed 's/^/-I/g' | sed 's:/[^/]\+$:/:g' | sort | uniq > .clang_complete
endfunction
function! DoTag()
    !ctags -L cscope.files
endfunction
command! -nargs=0 DoFind :call DoFind()
command! -nargs=0 DoClang :call DoClang()
command! -nargs=0 DoTag :call DoTag()
" --c++-kinds=+p	:	为c++文件增加函数原型的标签
" --fields=+iaS		:	为标签文件加入继承信息(i)、类访问控制信息(a)、以及函数的指纹(S)
" --extra=+q		:	为标签增加类修饰符
" ctrl-e	停止补全:	ctrl-y停止补全并接受当前所选的项目
function! DoExTag()
	!ctags --c++-kinds=+p --fields=+iaS --extra=+q -L cscope.files 
endfunction
function! DoStdTag()
	!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q --language-force=c++
endfunction
function! DoCscope()
    !cscope -bq -I cscope.files
endfunction
command! -nargs=0 DoCscope :call DoCscope()

function! DoPrg(name)
	if a:name == "find"
		:se gfm=%f
		:se grepprg=find
	endif
	if a:name == "grep"
		:set grepprg=grep\ --color\ -nri\ --include=*.[c,h,cpp,cc,java,s,S,]
	endif
endfunction
function! DoPtag()
	!DoPtag
endfunction
command! -nargs=0 DoPtag :call DoPtag()
"FindMate.vim
"search file plugin
",, or :FindMate filename
:set grepprg=find\ .\ -regex\ \".*\\.\\(cpp\\\\\|h\\\\\|c\\)\"\ \\\|\ xargs\ grep\ -n
":set grepprg=find\ .\ -regex\ \".*\\.\\(S\\\\\|s\\\\\|cc\\\\\|java\\\\\|cc\\\\\|c\\\\\|cpp\\\\\|h\\\\\|c\\)\"\ \\\|\ xargs\ grep\ -n


":se gfm=%f
":set grepprg=find\ .\ -name 

"se gfm?
"grepformat=%f:%l:%m

"set efm=%f:%l:\ %m
"se makeprg=makeinfo

"au FileType cpp AddCppFuncList()
"function! AddCppFuncList()
"	set dictionary-=~/.vim/ExtraVim/cpp_funclist.txt dictionary+=~/.vim/ExtraVim/cpp_function.txt
"	set complete-=k complete+=k
"endfunction

"mark.vim plugin
"normal mode:	\m mark or unmark the word
"\r manually input a regular expression
"\n clear this mark

"set paste "复制黏贴
"set fdm=marker
"set fdm=syntax
let g:CurrentLine=1
function! LocLine(linenum)
	let g:CurrentLine=a:linenum
endfunction
function! JumpLine(linenum) 
"	execute ":wincmd j" 
	let l:number=+a:linenum
"	let l:num=line(".")
"	let l:len=l:number-l:num
	let l:len=l:number-g:CurrentLine
	let g:CurrentLine=l:number
	if l:len > 0
		execute ":bdelete"
		execute ":cn " . len
	elseif l:len == 0
	else
	let len=-len
	execute ":bdelete"
	execute ":cp " . len
	endif
endfunction
command! -nargs=1 JumpLine :call JumpLine("<args>")
command! -nargs=1 LocLine  :call LocLine("<args>")
nmap ., :LocLine 
nmap ,. :JumpLine 

nmap <leader>h <leader>d<cr><Tab>
nmap <leader>l <leader>d<cr>:cp<cr>
nmap ,h <leader>h
nmap ,l <leader>l

function! JumpNext()
	let g:CurrentLine=g:CurrentLine+1
		execute ":cclose"
		execute ":bdelete"
		execute ":cn"
		execute ":cw"
		execute ":wincmd k"
endfunction
function! JumpPrev()
	if g:CurrentLine==1
		execute ":wincmd j"
		let g:CurrentLine=line(".")
		execute ":wincmd k"
	else
		let g:CurrentLine=g:CurrentLine-1
		execute ":bdelete"
		execute ":cp"
	endif
endfunction
command! -nargs=0 JumpNext :call JumpNext()
command! -nargs=0 JumpPrev :call JumpPrev()
nmap ,m :JumpNext<cr>
nmap ,n :JumpPrev<cr>


" OmniCppComplete config
set completeopt=longest,menu
set nocp
filetype plugin on
filetype indent on 
filetype plugin indent on
set ofu=syntaxcomplete#Complete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest
highlight Pmenu    guibg=darkgrey  guifg=black
highlight PmenuSel guibg=lightgrey guifg=black
" Enable omni completion.
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascrīptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
set omnifunc=omni#cpp#complete#Main
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp
"omni manual
" CTRL-X CTRL-L		整行补全		CTRL-X CTRL-N	当前文件关键字补全
" CTRL-X CTRL-K		字典补全		CTRL-X CTRL-T	同义字典补全
" CTRL-X CTRL-]     根据标签补全	CTRL-X CTRL-F	根据文件名补全
" CTRL-X CTRL-D		补全宏定义		CTRL-X CTRL-V	补全vim命令
" CTRL-X CTRL-U		用户自定义补全  CTRL-X CTRL-S	用户拼写建议
"set tags+=~/.vim/libstd_tags


"clang_complete.vim
"let g:clang_auto_select=1 
""let g:clang_auto_select=0
"let g:clang_complete_auto=1
""let g:clang_complete_auto=0
""let g:clang_complete_copen=1 
""let g:clang_hl_errors=1 
""let g:clang_periodic_quickfix=0 
"let g:clang_snippets=1 
"let g:clang_snippets_engine="clang_complete" 
"let g:clang_conceal_snippets=1 
""let g:clang_exec="clang" 
""let g:clang_user_options="" 
""let g:clang_auto_user_options="path, .clang_complete" 
""let g:clang_use_library=1 
""let g:clang_library_path="/home/tiashi/opt/clang+llvm-2.9-i686-linux/lib/" 
""let g:clang_sort_algo="priority" 
""let g:clang_complete_macros=1 
""let g:clang_complete_patterns=0 
"1.包含项目工程头文件，在文件.clang_complete中添加-I./xxx/xxx/
"如果使用标准库之外的函数库，可以设置clang_user_options变量，比如使用wxWidgets时候可以
":let clang_user_option="$(wx-config -cppflags)
"2.预编译   创建一个头文件，然后调用clang预编译：
"pchheader.h内容#include <xxx> #include<xxx>
"clang -x c++-header ./pchheader.h -fno-exceptions -fnu-runtime -o ./pchheader.pch 
"添加到.clang_complete
"echo '-include-pch pchheader.pch -fgnu-runtime' >> .clang_complete 
imap <c-l> <c-x><c-o>
imap <c-j> <c-x><c-k>
let g:flagsflags=1
function! ToggleFoo()
	if g:flags==1
		let g:flags=0
		:inoremap { {<cr>}<ESC>O
	else
		:inoremap { {
		let g:flags=1
	endif
endfunction

":inoremap ( ()<ESC><left>i
":inoremap { {<cr>}<ESC>O
"function! ClosePair(char)
"	if getline('.')[col('.') - 1] == a:char
"		return "\<Right>"
"	else
"		return a:char
"	endif
"endfunction

"设置gf跳转路径
"set path+=~/project/utils/include
"字典补全
"set dictionary-=~/.vim/dict/php_funclist.txt dictionary+=~/.vim/dict/php_funclist.txt
"set complete-=k complete+=k
set path+=/usr/include/sys
set path+=/usr/include/linux
set dictionary-=~/.vim/dict/cheader.txt dictionary+=~/.vim/dict/cheader.txt
set complete-=k complete+=k
"ctags -x --c-types=fvcsdm --sort=yes -R >tmp.tags
"cat tmp.tags | awk '{printf("%s:%s: [%s] [%s]\n", $4,$3,$1)}' > ptags

"viki
let g:vikiNameSuffix=".viki"
augr viki
au!
autocmd! BufRead,BufNewFile *.viki set filetype=viki
augr END


"vimwiki
"path :指定你wiki源文件目录
"path_html:		编译得到的HTML文件存目录
"auto_export:		每当保存wiki源文件时自动编译，关闭设为0
let g:vimwiki_list = [{'path': '~/tiashi/百度网盘/vim/vimwiki/vimwiki/',
	    \ 'path_html': '~/tiashi/百度网盘/vim/vimwiki/html/',
		\ 'html_header': '~/tiashi/百度网盘/vim/vimwiki/template/header.tpl',
		\ 'html_footer': '~/tiashi/百度网盘/vim/vimwiki/template/footer.tpl'}]


let g:vimwiki_camel_case = 0
let g:vimwiki_valid_html_tags = 'a,li,script,link,rel,href,img,th,td,table,tr,h1,b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h2,h3,h4,h5,h6,pre,blockquote,style,p'
let g:vimwiki_use_mouse=1
nmap <leader>wc :VimwikiAll2HTML<cr>
"let g:vimwiki_valid_html_tags='h1,h2,b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre'
"vimwiki command
"<leader>ww  打开index.wiki
"<leader>wd  删除当前wiki文件
"<leader>wt	 在新的标签页打开默认的wiki主页
"<leader>wr  重名你所在的wiki页面
"<backspace> 返回上一页
"<tab>       寻找下一个wiki
"<shitf><tab>	 寻找上一个wiki

"*bold*   bold
"_italic_	italic
"[[complex wiki link]]  link to complex wiki link
"* bullet item
"# numbered list item
"= header1 = 
"== header2 ==
"=== header2 ==

"特殊占位符号
"%toc 自动生成目录
"%title 指定HTML文档的title 建议放到文档的最末位，若为空，title就是文件名
"%nohtml   告诉vimwiki不为某条目生成HTML文件

map <C-m> :bn<cr>

"let g:vimwiki_valid_html_tags = 'br,code,hr'
:set paste

let tlist_vimwiki_settings = 'wiki;h:Headers'
:set ignorecase
"lookupfile.vim
" 指定英文逗号作为<leader>键
"let mapleader=","
 
" 在指定目录生成filenametags，并使lookupfile将这个文件作为查找源
function SetRootOfTheProject(path)
    " 进入指定目录
   exe 'cd '.a:path
   " 生成文件标签
    exe '!genfiletags'
    " 获取标签文件的路径
   let tagFilePath = genutils#CleanupFileName(a:path.'/filenametags')
   " 设置LookupFile插件的全局变量，使之以上面生成的标签文件作为查找源
    exe "let g:LookupFile_TagExpr='\"".tagFilePath."\"'"
endfunction
" 设置当前位置为工程的根目录
function SetHereTheRoot()
    call SetRootOfTheProject('.')
endfunction
nmap <leader>root :call SetHereTheRoot()<CR>
" 从用户的输入获取指定路径，并设置为工程的根目录
function SetSpecifiedPathTheRoot()
    call SetRootOfTheProject(input('请输入工程根目录的路径：'))
endfunction
nmap <leader>xroot :call SetSpecifiedPathTheRoot()<CR>
 
" 使用LookupFile打开文件
nmap <leader>o :LookupFile<CR>

let g:LookupFile_TagExpr = '"./filenametags"'
"let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc' 
