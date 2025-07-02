-- /lua/custom/plugins/language-tools.lua
--
-- Configuração definitiva para ferramentas de linguagem (Python e outras no futuro)
-- que lida corretamente com a ordem de carregamento dos plugins.

return {
  -- 1. Mason: O instalador de pacotes.
  -- Apenas garantimos que os executáveis que queremos (pyright, ruff) estejam na lista de instalação.
  {
    'mason-org/mason.nvim',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, { 'pyright', 'ruff' })
      end
    end,
  },

  -- 2. Mason-LSPConfig: A ponte que conecta Mason com LspConfig.
  -- Este é o plugin que lê a lista de servidores instalados e os configura.
  -- É o passo MAIS IMPORTANTE para corrigir o erro.
  {
    'williamboman/mason-lspconfig.nvim',
    opts = function(_, opts)
      -- Adicionamos 'pyright' à lista de servidores que esta ponte deve configurar automaticamente.
      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, { 'pyright' })
      end
    end,
  },

  -- 3. Conform: O formatador.
  -- Apenas definimos o formatador para a linguagem Python.
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        python = { 'ruff' },
      },
    },
  },
}
