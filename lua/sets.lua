vim.g.mapleader = " "

-- Most important setting of all no FREAKING mouse!!!
vim.opt.mouse = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 5
vim.opt.ruler = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.showcmd = true

vim.opt.cursorline = true
-- vim.cmd [[ hi CursorLine cterm=none ]]
--
vim.opt.foldmethod = "indent"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 5

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.schedule(CodeRunner)
    end,
})

function CodeRunner()
    local bufnr = vim.api.nvim_get_current_buf()
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
    --local fname = vim.fn.expand "%:p:t"

    if ft == "tex" then
        vim.opt.spell= true
        vim.opt.spelllang = "en_us"
        require("remaps.latex")
    end
end
