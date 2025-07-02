-- /lua/custom/plugins/theme.lua
--
-- Apenas define o plugin Catppuccin e usa nosso gerenciador de tema para configurá-lo.

return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      -- Carrega nosso módulo gerenciador de temas
      local theming = require 'custom.theming'

      -- Define o tema padrão (mocha) ao iniciar o Neovim
      theming.load 'mocha'

      -- Cria os comandos de usuário para trocar de tema facilmente
      vim.api.nvim_create_user_command('Latte', function()
        theming.load 'latte'
      end, {})
      vim.api.nvim_create_user_command('Frappe', function()
        theming.load 'frappe'
      end, {})
      vim.api.nvim_create_user_command('Macchiato', function()
        theming.load 'macchiato'
      end, {})
      vim.api.nvim_create_user_command('Mocha', function()
        theming.load 'mocha'
      end, {})
    end,
  },
}
