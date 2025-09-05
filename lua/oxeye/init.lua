-- lua/oxeye/init.lua --

local M = {}
local configs = require('lspconfig.configs')
local lspconfig = require('lspconfig')
local util = require('lspconfig.util')

M.setup = function()
  -- Highlighter --
  vim.filetype.add({
    extension = {
      simplicity = 'simplicity',
    },
  })
  vim.treesitter.language.register('rust', 'simplicity')

  -- Language Server Protocol --
  if not configs.oxeye then
    configs.oxeye = {
      default_config = {
        cmd = { 'oxeye' },
        filetypes = { 'simplicity' },
        root_dir = util.root_pattern(
          {
            '.git',
          }
        ),
        settings = {},
      }
    }
    lspconfig.oxeye.setup{}
  end
end

return M
