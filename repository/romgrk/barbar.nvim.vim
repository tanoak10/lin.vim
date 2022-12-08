let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false
let bufferline.icons = 'both'
let bufferline.no_name_title = '[No Name]'
let bufferline.maximum_length = 80

let LIN_VIM_NVIM_TREE='NvimTree'
let LIN_VIM_FERN='fern'

if has('nvim-0.7')
    " ctrl/alt/cmd + 1~9, ctrl/alt/cmd + 0
    nnoremap <silent> <expr> <D-1> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 1<CR>"
    nnoremap <silent> <expr> <D-2> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 2<CR>"
    nnoremap <silent> <expr> <D-3> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 3<CR>"
    nnoremap <silent> <expr> <D-4> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 4<CR>"
    nnoremap <silent> <expr> <D-5> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 5<CR>"
    nnoremap <silent> <expr> <D-6> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 6<CR>"
    nnoremap <silent> <expr> <D-7> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 7<CR>"
    nnoremap <silent> <expr> <D-8> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 8<CR>"
    nnoremap <silent> <expr> <D-9> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 9<CR>"
    nnoremap <silent> <expr> <D-0> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferLast<CR>"
    nnoremap <silent> <expr> <A-1> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 1<CR>"
    nnoremap <silent> <expr> <A-2> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 2<CR>"
    nnoremap <silent> <expr> <A-3> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 3<CR>"
    nnoremap <silent> <expr> <A-4> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 4<CR>"
    nnoremap <silent> <expr> <A-5> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 5<CR>"
    nnoremap <silent> <expr> <A-6> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 6<CR>"
    nnoremap <silent> <expr> <A-7> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 7<CR>"
    nnoremap <silent> <expr> <A-8> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 8<CR>"
    nnoremap <silent> <expr> <A-9> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 9<CR>"
    nnoremap <silent> <expr> <A-0> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferLast<CR>"
    nnoremap <silent> <expr> <C-1> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 1<CR>"
    nnoremap <silent> <expr> <C-2> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 2<CR>"
    nnoremap <silent> <expr> <C-3> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 3<CR>"
    nnoremap <silent> <expr> <C-4> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 4<CR>"
    nnoremap <silent> <expr> <C-5> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 5<CR>"
    nnoremap <silent> <expr> <C-6> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 6<CR>"
    nnoremap <silent> <expr> <C-7> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 7<CR>"
    nnoremap <silent> <expr> <C-8> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 8<CR>"
    nnoremap <silent> <expr> <C-9> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferGoto 9<CR>"
    nnoremap <silent> <expr> <C-0> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferLast<CR>"

    " go to next(right) buffer
    nnoremap <silent> <expr> <Leader>bn (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <A-.> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <D-.> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <C-.> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <A-Right> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <D-Right> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <C-Right> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    " go to previous(left) buffer
    nnoremap <silent> <expr> <Leader>bp (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <A-,> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <D-,> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <C-,> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <A-Left> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <D-Left> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <C-Left> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"

    " close current buffer without closing vim window
    nnoremap <silent> <expr> <Leader>bd (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferClose<CR>"

    " re-order current buffer to previous(left)
    nnoremap <silent> <expr> <A-S-,> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    nnoremap <silent> <expr> <D-S-,> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    nnoremap <silent> <expr> <C-S-,> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    nnoremap <silent> <expr> <A-S-Left> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    nnoremap <silent> <expr> <D-S-Left> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    nnoremap <silent> <expr> <C-S-Left> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    " re-order current buffer to next(right)
    nnoremap <silent> <expr> <A-S-.> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
    nnoremap <silent> <expr> <D-S-.> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
    nnoremap <silent> <expr> <C-S-.> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
    nnoremap <silent> <expr> <A-S-Right> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
    nnoremap <silent> <expr> <D-S-Right> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
    nnoremap <silent> <expr> <C-S-Right> (&filetype == LIN_VIM_NVIM_TREE ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
else
    " ctrl/alt/cmd + 1~9, ctrl/alt/cmd + 0
    nnoremap <silent> <expr> <D-1> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 1<CR>"
    nnoremap <silent> <expr> <D-2> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 2<CR>"
    nnoremap <silent> <expr> <D-3> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 3<CR>"
    nnoremap <silent> <expr> <D-4> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 4<CR>"
    nnoremap <silent> <expr> <D-5> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 5<CR>"
    nnoremap <silent> <expr> <D-6> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 6<CR>"
    nnoremap <silent> <expr> <D-7> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 7<CR>"
    nnoremap <silent> <expr> <D-8> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 8<CR>"
    nnoremap <silent> <expr> <D-9> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 9<CR>"
    nnoremap <silent> <expr> <D-0> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferLast<CR>"
    nnoremap <silent> <expr> <A-1> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 1<CR>"
    nnoremap <silent> <expr> <A-2> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 2<CR>"
    nnoremap <silent> <expr> <A-3> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 3<CR>"
    nnoremap <silent> <expr> <A-4> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 4<CR>"
    nnoremap <silent> <expr> <A-5> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 5<CR>"
    nnoremap <silent> <expr> <A-6> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 6<CR>"
    nnoremap <silent> <expr> <A-7> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 7<CR>"
    nnoremap <silent> <expr> <A-8> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 8<CR>"
    nnoremap <silent> <expr> <A-9> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 9<CR>"
    nnoremap <silent> <expr> <A-0> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferLast<CR>"
    nnoremap <silent> <expr> <C-1> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 1<CR>"
    nnoremap <silent> <expr> <C-2> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 2<CR>"
    nnoremap <silent> <expr> <C-3> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 3<CR>"
    nnoremap <silent> <expr> <C-4> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 4<CR>"
    nnoremap <silent> <expr> <C-5> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 5<CR>"
    nnoremap <silent> <expr> <C-6> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 6<CR>"
    nnoremap <silent> <expr> <C-7> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 7<CR>"
    nnoremap <silent> <expr> <C-8> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 8<CR>"
    nnoremap <silent> <expr> <C-9> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferGoto 9<CR>"
    nnoremap <silent> <expr> <C-0> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferLast<CR>"

    " go to next(right) buffer
    nnoremap <silent> <expr> <Leader>bn (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <D-.> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <D-Right> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <A-.> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <A-Right> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <C-.> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    nnoremap <silent> <expr> <C-Right> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferNext<CR>"
    " go to previous(left) buffer
    nnoremap <silent> <expr> <Leader>bp (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <D-,> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <D-Left> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <A-,> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <A-Left> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <C-,> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"
    nnoremap <silent> <expr> <C-Left> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferPrevious<CR>"

    " close current buffer without closing vim window
    nnoremap <silent> <expr> <Leader>bd (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferClose<CR>"

    " re-order current buffer to previous(left)
    nnoremap <silent> <expr> <D-S-Left> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    nnoremap <silent> <expr> <A-S-Left> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    nnoremap <silent> <expr> <C-S-Left> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferMovePrevious<CR>"
    " re-order current buffer to next(right)
    nnoremap <silent> <expr> <D-S-Right> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
    nnoremap <silent> <expr> <A-S-Right> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
    nnoremap <silent> <expr> <C-S-Right> (&filetype == LIN_VIM_FERN ? "\<c-w>\<c-w>" : '').":BufferMoveNext<CR>"
endif
