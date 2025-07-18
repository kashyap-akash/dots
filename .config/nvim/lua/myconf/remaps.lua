vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --MOVE SELECTED,
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") --CODE



-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")


-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")


vim.keymap.set("n", "J", "mzJ`z")            --APPEND THE NEXT LINE TO CURRENT LINE WHILE CURSOR REMAINS ON SAME PLACE
vim.keymap.set("n", "<C-d>", "<C-d>zz")      --HALF PAGE JUMPING,
vim.keymap.set("n", "<C-u>", "<C-u>zz")      --BUT CURSOR REMAINS IN THE MIDDLE
vim.keymap.set("n", "n", "nzzzv")            --SEARCHED TERMS,
vim.keymap.set("n", "N", "Nzzzv")            --REMAIN IN MIDDLE


vim.keymap.set("x", "<leader>p", [["_dP]]) --PASTE WITHOUT LOOSING CURRENT SELECTED BUFFER

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) --DELETING TO VOID REGISTER

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--QUICKFIX NAV
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --CHANGE ALL OCCURENCES OF THE CURRENT WORD
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })              --MAKES CURRET FILE EXECUTABLE(IF IT IS A SCRIPT OFC ;-;)


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
