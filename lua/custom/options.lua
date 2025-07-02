-- /lua/custom/options.lua
--
-- Arquivo para todas as suas configurações personalizadas de 'vim.opt'.

-- É uma boa prática criar uma variável local para 'vim.opt'
local opt = vim.opt

-- [[ Configurações de Numeração de Linhas ]]
-- Ativa o modo de numeração híbrido, excelente para navegação
opt.number = true -- Mostra o número absoluto da linha atual
opt.relativenumber = true -- Mostra os números relativos para todas as outras linhas

-- [[ Outras configurações úteis que você pode querer ]]
-- opt.cursorline = true     -- Destaca a linha onde o cursor está
-- opt.wrap = false          -- Impede que linhas longas quebrem para a linha de baixo
-- opt.scrolloff = 8         -- Mantém 8 linhas de contexto acima/abaixo do cursor ao rolar
