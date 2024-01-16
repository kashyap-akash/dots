local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) --FIND PROJECT FILES
vim.keymap.set('n', '<C-p>', builtin.git_files, {})       --FIND GIT FILES
vim.keymap.set('n', '<leader>ps', function()              --GREP
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
