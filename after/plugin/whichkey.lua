local status_ok, which_key = pcall(require, "which-key")
if not status_ok then return end

local setup = {
    plugins = {
        marks = true,
        registers = true,
        spelling = {enabled = true, suggestions = 20},
        presets = {
            operators = false,
            motions = true,
            text_objects = true,
            windows = true,
            nav = true,
            z = true,
            g = true
        }
    },
    icons = {breadcrumb = "»", separator = "➜", group = "+"},
    popup_mappings = {scroll_down = "<c-d>", scroll_up = "<c-u>"},
    window = {
        border = "single",
        position = "bottom",
        margin = {1, 0, 1, 0},
        padding = {2, 2, 2, 2},
        winblend = 0
    },
    layout = {
        height = {min = 4, max = 25},
        width = {min = 20, max = 50},
        spacing = 3,
        align = "left"
    },
    ignore_missing = true,
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "<call>", "lua", "^:", "^ "},
    show_help = true,
    triggers = "auto",
    triggers_blacklist = {i = {"j", "k"}, v = {"j", "k"}}
}

local opts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true
}

local mappings = {
    ["k"] = {"<cmd>bdelete<CR>", "Kill Buffer"},
    ["p"] = {"<cmd>Lazy<CR>", "Plugin Manager"},
    ["q"] = {"<cmd>wqall!<CR>", "Quit"},
    ["w"] = {"<cmd>w!<CR>", "Save"},
    ["e"] = {"<cmd>NvimTreeToggle<cr>", "Explorer"},
    ["m"] = {"<cmd>Mason<cr>", "Mason UI for Lsp"},
    ["r"] = {"<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Reformat Code"},
    f = {
        name = "File Search",
        c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        f = {
            "<cmd>lua require('telescope.builtin').find_files()<cr>",
            "Find files"
        },
        t = {"<cmd>Telescope live_grep <cr>", "Find Text Pattern In All Files"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"}
    },

    s = {
        name = "Search",
        h = {"<cmd>Telescope help_tags<cr>", "Find Help"},
        m = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        r = {"<cmd>Telescope registers<cr>", "Registers"},
        k = {"<cmd>Telescope keymaps<cr>", "Keymaps"},
        c = {"<cmd>Telescope commands<cr>", "Commands"}
    },

    l = {
        name = "LSP",
        a = {"<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action"},
        i = {"<cmd>LspInfo<cr>", "Info"},
        l = {"<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action"},
        r = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename"},
        s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
        S = {
            "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
            "Workspace Symbols"
        },
        t = {
          "<cmd>TroubleToggle<cr>", "Trouble"
        }

    },
    t = {
        name = "Terminal",
        t = {"<cmd>lua _HTOP_TOGGLE()<cr>", "Htop"}, -- (Optional) Htop, If you have htop in linux
        p = {"<cmd>lua _PYTHON_TOGGLE()<cr>", "Python"}, -- Python Terminal
        f = {"<cmd>ToggleTerm direction=float<cr>", "Float"}, -- Floating Terminal

        -- Play with size according to your needs.
        h = {"<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal"}, -- Horizontal Terminal,
        v = {"<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical"} -- Vertical Terminal
    },
    h = {
      name = "GitSigns",
      b = {"<cmd>Gitsigns blame_line<cr>", "Blame line"},
      d = {"<cmd>Gitsigns diffthis<cr>", "Diff this"},
      s = {"<cmd>Gitsigns stage_hunk<cr>", "Stage hunk"},
      S = {"<cmd>Gitsigns stage_buffer<cr>", "Stage buffer"},
      u = {"<cmd>Gitsigns undo_stage_hunk<cr>", "Undo Stage hunk"},
      r = {"<cmd>Gitsigns reset_hunk<cr>", "Reset hunk"},
      R = {"<cmd>Gitsigns reset_buffer<cr>", "Reset buffer"},
      p = {"<cmd>Gitsigns preview_hunk<cr>", "Preview hunk"}
    }
}

which_key.setup(setup)
which_key.register(mappings, opts)
