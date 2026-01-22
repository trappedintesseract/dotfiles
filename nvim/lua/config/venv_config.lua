-- Utility for project-local python
local function project_python()
  return vim.g.project_python
end

-- Example: Pyright
require("lspconfig").pyright.setup({
  before_init = function(_, config)
    local python = project_python()
    if python then
      config.settings = config.settings or {}
      config.settings.python = {
        pythonPath = python,
      }
    end
  end,
})
