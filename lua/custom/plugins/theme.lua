-- /lua/custom/plugins/theme.lua
--

return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      -- Define a função de configuração para ser reutilizada
      local function setup_catppuccin(flavour)
        require('catppuccin').setup {
          flavour = flavour, -- 'latte', 'frappe', 'macchiato', 'mocha'

          -- Mantenha aqui todas as suas outras customizações!
          -- Se não repetir as opções, elas serão resetadas para o padrão.
          transparent_background = true,
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
        -- Aplica o tema após a configuração
        vim.cmd.colorscheme 'catppuccin'
      end

      -- 1. Define o tema padrão (mocha) ao iniciar o Neovim
      setup_catppuccin 'mocha'

      -- 2. Cria comandos de usuário para trocar de tema facilmente
      vim.api.nvim_create_user_command('Latte', function()
        setup_catppuccin 'latte'
      end, { desc = 'Muda o tema para Catppuccin Latte' })

      vim.api.nvim_create_user_command('Frappe', function()
        setup_catppuccin 'frappe'
      end, { desc = 'Muda o tema para Catppuccin Frappe' })

      vim.api.nvim_create_user_command('Macchiato', function()
        setup_catppuccin 'macchiato'
      end, { desc = 'Muda o tema para Catppuccin Macchiato' })

      vim.api.nvim_create_user_command('Mocha', function()
        setup_catppuccin 'mocha'
      end, { desc = 'Muda o tema para Catppuccin Mocha' })
    end,
  },
}
