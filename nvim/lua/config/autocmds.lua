-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = { "*.c", "*.cpp" },
  callback = function()
    -- Only insert if buffer is empty
    if vim.fn.line("$") ~= 1 or vim.fn.getline(1) ~= "" then
      return
    end

    local template_file = vim.fn.expand("~/Cp/temp.cpp")

    -- Insert template
    vim.cmd("0read " .. template_file)

    -- Replace placeholders WITHOUT moving cursor
    local current_date = os.date("%Y-%m-%d")
    local problem_name = vim.fn.expand("%:t:r")

    vim.cmd("keepjumps keeppatterns %s/<<date>>/" .. current_date .. "/g")
    vim.cmd("keepjumps keeppatterns %s/<<problem_name>>/" .. problem_name .. "/g")

    -- Mark buffer as clean
    vim.opt_local.modified = false

    -- Jump to cursor marker EXACTLY
    vim.cmd([[keepjumps keeppatterns silent! /@cursor]])
    vim.cmd([[silent! normal! "_dd]])
    vim.cmd("startinsert")
  end,
})
