let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "",
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': ""
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

lua<<EOF
local key_mappings = {
  -- navigation
  { key = {"l", "o", "<2-LeftMouse>", "l"}, action = "edit" },
  { key = "h",              action = "close_node" },
  { key = "<CR>",           action = "cd" },
  { key = "<BS>",           action = "dir_up" },

  -- split
  { key = "e",              action = "split" },
  { key = "E",              action = "vsplit" },
  { key = "t",              action = "tabnew" },

  -- refresh
  { key = "R",              action = "refresh" },

  -- create/delete/rename
  { key = {"N", "K"},       action = "create" },
  { key = {"r", "m"},       action = "rename" },
  { key = "d",              action = "trash" },
  { key = "D",              action = "remove" },

  -- copy/paste/cut
  { key = "<C-x>",          action = "cut" },
  { key = "<C-c>",          action = "copy" },
  { key = "<C-v>",          action = "paste" },
  { key = "y",              action = "copy_name" },
  { key = "Y",              action = "copy_absolute_path" },

  -- open in system
  { key = "s",              action = "system_open" },

  -- help
  { key = "?",              action = "toggle_help" },

  -- git chunk
  { key = "[c",             action = "prev_git_item" },
  { key = "]c",             action = "next_git_item" },

  -- nvim-tree.lua specific funtions
  { key = "<",              action = "prev_sibling" },
  { key = ">",              action = "next_sibling" },
  { key = "gp",             action = "parent_node" },
  { key = "<C-k>",          action = "first_sibling" },
  { key = "<C-j>",          action = "last_sibling" },
}

require'nvim-tree'.setup {
  disable_netrw        = false,
  hijack_netrw         = true,
  open_on_setup        = true,
  ignore_ft_on_setup   = {},
  auto_close           = false,
  auto_reload_on_write = true,
  open_on_tab          = false,
  hijack_cursor        = true,
  update_cwd           = false,
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 40,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = true,
      list = key_mappings,
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      global = false,
    },
    open_file = {
      quit_on_open = false,
    }
  }
}
EOF

function! s:nvim_tree_settings() abort
  " key mapping

  " resize explorer width
  nnoremap <silent> <buffer> <D-,> :<C-u>NvimTreeResize -10<CR>
  nnoremap <silent> <buffer> <D-.> :<C-u>NvimTreeResize +10<CR>
  nnoremap <silent> <buffer> <A-,> :<C-u>NvimTreeResize -10<CR>
  nnoremap <silent> <buffer> <A-.> :<C-u>NvimTreeResize +10<CR>
  nnoremap <silent> <buffer> <D-Left> :<C-u>NvimTreeResize -10<CR>
  nnoremap <silent> <buffer> <D-Right> :<C-u>NvimTreeResize +10<CR>
  nnoremap <silent> <buffer> <A-Left> :<C-u>NvimTreeResize -10<CR>
  nnoremap <silent> <buffer> <A-Right> :<C-u>NvimTreeResize +10<CR>
endfunction

augroup MyNvimTreeGroup
  autocmd!
  autocmd FileType NvimTree call s:nvim_tree_settings()
augroup END
