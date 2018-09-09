"" ---- vim-gutentags.vim ----

let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的tags文件全部放入~/.cache/tags目录中 避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 配置ctags的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q', '--output-format=e-ctags']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测~/.cache/tags不存在就新建
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif
