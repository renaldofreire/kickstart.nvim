-- /lua/custom/plugins/theme.lua
--
-- Configuração completa para o tema Catppuccin, com integrações.
-- Para mais informações: https://github.com/catppuccin/nvim

return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000, -- Prioridade alta para garantir que o tema carregue primeiro
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- Escolha sua variante: latte, frappe, macchiato, mocha

        -- Deixa o fundo do editor transparente. Mude para 'false' se não quiser.
        transparent_background = true,

        -- Adiciona um sublinhado itálico para 'strings' de documentação
        term_colors = true,

        -- Estilos de fonte customizáveis
        styles = {
          comments = { 'italic' },
          conditionals = { 'italic' },
          functions = {},
          keywords = {},
          variables = {},
        },

        -- Integrações com outros plugins para um visual consistente
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          mason = true,
          which_key = true,
          indent_blankline = {
            enabled = true,
            scope_color = 'macchiato', -- A cor das linhas de escopo
          },
          -- Adicione outras integrações conforme necessário
        },
      }

      -- Comando final para aplicar o esquema de cores
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
