require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "rust", "javascript", "typescript", "c", "lua", "vim", "vimdoc",
        "query", "python", "markdown", "markdown_inline"
    },
    sync_install = false,
    auto_install = true,
    highlight = {enable = true, additional_vim_regex_highlighting = false}
})
