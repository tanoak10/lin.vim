" only enable statusline, disable tabline
let g:lightline = {
  \ 'active': {
  \   'left': [ ['mode', 'paste'],
  \             ['LightLineFileName'],
  \             ['LightLineGitStatus', 'LightLineCurrentFunction', 'LightLineCocStatus'] ],
  \   'right': [ [ 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
  \ },
  \ 'component': {
  \   'charvaluehex': '0x%B',
  \   'lineinfo': ' %3l:%-2v',
  \ },
  \ 'component_function': {
  \   'LightLineFileName'   : 'LightLineFileName',
  \   'LightLineGitStatus'  : 'LightLineGitStatus',
  \   'LightLineCocStatus'  : 'LightLineCocStatus',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' },
  \ 'enable': {
  \   'statusline': 1,
  \   'tabline': 0
  \   }
  \ }


function! LightLineFileName() abort
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    if &modified
        let filename = filename . '[+]'
    endif
    if &readonly
        let filename = filename . '[-]'
    endif
    return filename
endfunction

function! LightLineCocStatus() abort
    let coc_status = coc#status()
    if empty(coc_status)
        return ''
    else
        return coc_status
    endif
endfunction

" integrate statusline with git
function! LightLineGitStatus() abort
    let git_branch = get(g:, 'coc_git_status', '')
    if empty(git_branch)
        return ''
    endif
    let git_changes = get(b:, 'coc_git_status', '')
    if empty(git_changes)
        return git_branch
    else
        return git_branch . git_changes
    endif
endfunction

" update coc status when it's changed
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()