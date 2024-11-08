-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps he
-- Keymaps are automatically loaded on the VeryLazy evento
-- Establece un keymap para abrir una terminal dividida
vim.api.nvim_set_keymap("n", "<leader>ts", ":split | term<CR>", { noremap = true, silent = true })

-- Keymap para ejecutar el intérprete de Python en el archivo abierto
vim.api.nvim_set_keymap("n", "<leader>rp", ":w !python3 %<CR>", { noremap = true, silent = true })

-- Configurar atajo para iniciar LiveServer
vim.keymap.set("n", "<leader>ls", ":LiveServerStart<CR>", { noremap = true, silent = true })

-- Asigna un atajo para ejecutar `quarto publish gh-pages` con confirmación automática
vim.keymap.set("n", "<leader>qp", function()
  vim.cmd(":split | term quarto publish gh-pages") -- Ejecuta el comando
end, { noremap = true, silent = true })
