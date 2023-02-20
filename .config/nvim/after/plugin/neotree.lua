require('neo-tree').setup({
    close_if_last_window = true,
    filesystem = {
        follow_current_file = true
    }
})

vim.keymap.set("n", "<leader>b", '<cmd>Neotree<cr>')
