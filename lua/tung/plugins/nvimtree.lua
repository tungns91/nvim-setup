local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

--  setup with some options
nvimtree.setup({
  sort_by = "case_sensitive",
  auto_reload_on_write = true,
  sync_root_with_cwd = true,
  --respect_buf_cwd = false,
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  filters = {
    dotfiles = true,
  },
})
