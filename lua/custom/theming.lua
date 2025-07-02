-- /lua/custom/theming.lua
-- Versão 4: Desativando a transparência para garantir uma renderização consistente.

local M = {}

function M.setup(flavour)
  require('catppuccin').setup {
    flavour = flavour or 'mocha',

    -- A MUDANÇA ESTÁ AQUI
    -- Força o plugin a desenhar sua própria cor de fundo.
    transparent_background = false,

    term_colors = true,
    styles = {
      comments = { 'italic' },
      conditionals = { 'italic' },
    },
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      mason = true,
      which_key = true,
      indent_blankline = {
        enabled = true,
        scope_color = 'macchiato',
      },
    },
  }
end

-- A função de carregamento com "reset visual" continua útil
function M.load(flavour)
  M.setup(flavour)
  vim.cmd.colorscheme 'habamax'
  vim.cmd.colorscheme 'catppuccin'
end

return M
