-- /lua/custom/keymaps.lua
--
-- Arquivo para todos os seus atalhos de teclado personalizados.

-- É uma boa prática criar uma variável local para a função de mapeamento
local map = vim.keymap.set

-- [[ Atalhos de Comentário ]]
--
-- Cria um atalho para comentar/descomentar linhas ou blocos de código.
-- Usa o plugin 'mini.comment' que já vem com o kickstart.nvim.
--
-- Modo Normal: Pressione Ctrl+/ para comentar a linha atual.
-- Modo Visual: Selecione várias linhas e pressione Ctrl+/ para comentar o bloco.
map('n', '<C-/>', 'gcc', { noremap = true, silent = true, desc = 'Comentar/Descomentar linha' })
map('v', '<C-/>', 'gc', { noremap = true, silent = true, desc = 'Comentar/Descomentar seleção' })

-- [[ Outras ideias de atalhos úteis e seguros ]]
--
-- Mover linhas selecionadas para cima/baixo com Alt + J/K
-- map('v', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true, desc = 'Mover seleção para baixo' })
-- map('v', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true, desc = 'Mover seleção para cima' })
--
-- Limpar o realce de busca com a tecla Esc
-- map('n', '<Esc>', '<cmd>nohlsearch<CR>', { silent = true, desc = 'Limpar realce de busca' })
