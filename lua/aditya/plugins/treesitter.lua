require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
ensure_installed = {
  "bash",
  "c",
  "cpp",
  "go",
  "html",
  "java",
  "javascript",
  "json",
  "lua",
  "markdown",
  "python",
  "query",
  "rust",
  "typescript",
  "vim",
  "vimdoc"
},

  highlight = {
    enable = true,
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
      },
    },
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  -- Add other Treesitter-related configurations here
}



