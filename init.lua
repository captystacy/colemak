local colemak = {}AAA

local mappings = {A
    -- Up/down/left/rightA
    { modes = { "n", "o", "x" }, lhs = "n", rhs = "h", desc = "Left (h)" },A
    { modes = { "n", "o", "x" }, lhs = "i", rhs = "k", desc = "Up (k)" },A
    { modes = { "n", "o", "x" }, lhs = "e", rhs = "j", desc = "Down (j)" },A
    { modes = { "n", "o", "x" }, lhs = ",", rhs = "5j", desc = "Long Down (,)" },A
    { modes = { "n", "o", "x" }, lhs = ".", rhs = "5k", desc = "Long Up (.)" },A
    { modes = { "n", "o", "x" }, lhs = "o", rhs = "l", desc = "Right (l)" },A

    -- Beginning/end of line
    { modes = { "n", "o", "x" }, lhs = "l", rhs = "^", desc = "First non-blank character" },
    { modes = { "n", "o", "x" }, lhs = ";", rhs = "$", desc = "End of line" },

    -- PageUp/PageDown
    { modes = { "n", "x" }, lhs = "j", rhs = "<PageUp>", desc = "DESC" },
    { modes = { "n", "x" }, lhs = "h", rhs = "<PageDown>", desc = "DESC" },

    -- Jumplist navigation
    { modes = { "n" }, lhs = "<C-u>", rhs = "<C-i>", desc = "Jumplist forward" },
    { modes = { "n" }, lhs = "<C-e>", rhs = "<C-o>", desc = "Jumplist forward" },

    -- Word left/right
    { modes = { "n", "o", "x" }, lhs = "u", rhs = "b", desc = "Word back" },
    { modes = { "n", "o", "x" }, lhs = "y", rhs = "w", desc = "Word forward" },
    { modes = { "n", "o", "v" }, lhs = "<C-l>", rhs = "B", desc = "WORD back" },
    { modes = { "n", "o", "v" }, lhs = "<C-y>", rhs = "W", desc = "WORD forward" },

    -- End of word left/right
    { modes = { "n", "o", "x" }, lhs = "N", rhs = "ge", desc = "End of word back" },
    { modes = { "n", "o", "x" }, lhs = "<M-n>", rhs = "gE", desc = "End of WORD back" },
    { modes = { "n", "o", "x" }, lhs = "I", rhs = "e", desc = "End of word forward" },
    { modes = { "n", "o", "x" }, lhs = "<M-i>", rhs = "E", desc = "End of WORD forward" },

    -- Text objects
    -- diw is drw. daw is now dtw.
    { modes = { "o", "v" }, lhs = "r", rhs = "i", desc = "O/V mode: inner (i)" },
    { modes = { "o", "v" }, lhs = "t", rhs = "a", desc = "O/V mode: a/an (a)" },
    -- Move visual replace from 'r' to 'R'
    { modes = { "o", "v" }, lhs = "R", rhs = "r", desc = "Replace" },

    -- Folds
    { modes = { "n", "x" }, lhs = "b", rhs = "z" },
    { modes = { "n", "x" }, lhs = "bb", rhs = "zb", desc = "Scroll line and cursor to bottom" },
    { modes = { "n", "x" }, lhs = "bu", rhs = "zk", desc = "Move up to fold" },
    { modes = { "n", "x" }, lhs = "be", rhs = "zj", desc = "Move down to fold" },

    -- Copy/paste
    { modes = { "n", "o", "x" }, lhs = "c", rhs = "y" },
    { modes = { "n", "x" }, lhs = "v", rhs = "p" },
    { modes = { "n" }, lhs = "C", rhs = "y$" },
    { modes = { "x" }, lhs = "C", rhs = "y" },
    { modes = { "n", "x" }, lhs = "V", rhs = "P" },

    -- Undo/redo
    { modes = { "n" }, lhs = "z", rhs = "u" },
    { modes = { "n" }, lhs = "gz", rhs = "U" },
    { modes = { "n" }, lhs = "Z", rhs = "<C-r>" },

    -- inSert/append (T)
    { modes = { "n" }, lhs = "s", rhs = "i" },
    { modes = { "n" }, lhs = "S", rhs = "I" },
    { modes = { "n" }, lhs = "t", rhs = "a" },
    { modes = { "n" }, lhs = "T", rhs = "A" },

    -- Change
    { modes = { "n", "o", "x" }, lhs = "w", rhs = "c" },
    { modes = { "n", "x" }, lhs = "W", rhs = "C" },

    -- Visual mode
    { modes = { "n", "x" }, lhs = "a", rhs = "v" },
    { modes = { "n", "x" }, lhs = "A", rhs = "V" },

    -- Insert in Visual mode
    { modes = { "v" }, lhs = "S", rhs = "I" },

    -- Search
    { modes = { "n", "o", "x" }, lhs = "k", rhs = "n" },
    { modes = { "n", "o", "x" }, lhs = "K", rhs = "N" },

    -- 'til
    -- Breaks diffput
    { modes = { "n", "o", "x" }, lhs = "p", rhs = "t" },
    { modes = { "n", "o", "x" }, lhs = "P", rhs = "T" },

    -- Fix diffput (t for 'transfer')
    { modes = { "n" }, lhs = "dt", rhs = "dp", desc = "diffput (t for 'transfer')" },

    -- Macros (replay the macro recorded by qq)
    { modes = { "n" }, lhs = "Q", rhs = "@q", desc = "replay the 'q' macro" },

    -- Cursor to bottom of screen
    -- H and M haven't been remapped, only L needs to be mapped
    { modes = { "n" }, lhs = "B", rhs = "L" },
    { modes = { "v" }, lhs = "B", rhs = "L" },

    -- Misc overridden keys must be prefixed with g
    { modes = { "n", "x" }, lhs = "gX", rhs = "X" },
    { modes = { "n", "x" }, lhs = "gU", rhs = "U" },
    { modes = { "n", "x" }, lhs = "gQ", rhs = "Q" },
    { modes = { "n", "x" }, lhs = "gK", rhs = "K" },
    -- extra alias
    { modes = { "n" }, lhs = "gh", rhs = "K" },
    { modes = { "x" }, lhs = "gh", rhs = "K" },

    -- Window navigation
    { modes = { "n" }, lhs = "<C-w>n", rhs = "<C-w>h" },
    { modes = { "n" }, lhs = "<C-w>i", rhs = "<C-w>k" },
    { modes = { "n" }, lhs = "<C-w>e", rhs = "<C-w>j" },
    { modes = { "n" }, lhs = "<C-w>o", rhs = "<C-w>l" },
    { modes = { "n" }, lhs = "<C-w>N", rhs = "<C-w>H" },
    { modes = { "n" }, lhs = "<C-w>I", rhs = "<C-w>K" },
    { modes = { "n" }, lhs = "<C-w>E", rhs = "<C-w>J" },
    { modes = { "n" }, lhs = "<C-w>O", rhs = "<C-w>L" },
    -- Disable spawning empty buffer
    { modes = { "n" }, lhs = "<C-w><C-n>", rhs = "<nop>" },
}

function colemak.setup(_)
    colemak.apply()

    vim.api.nvim_create_user_command(
        "ColemakEnable",
        colemak.apply,
        { desc = "Applies Colemak mappings" }
    )
    vim.api.nvim_create_user_command(
        "ColemakDisable",
        colemak.unapply,
        { desc = "Removes Colemak mappings" }
    )
end

function colemak.apply()
    for _, mapping in pairs(mappings) do
        vim.keymap.set(
            mapping.modes,
            mapping.lhs,
            mapping.rhs,
            { desc = mapping.desc }
        )
    end
end

function colemak.unapply()
    for _, mapping in pairs(mappings) do
        vim.keymap.del(mapping.modes, mapping.lhs)
    end
end

colemak.setup()

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})


local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth',
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
    { -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },

      -- Useful for getting pretty icons, but requires a Nerd Font.
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      -- Telescope is a fuzzy finder that comes with a lot of different things that
      -- it can fuzzy find! It's more than just a "file finder", it can search
      -- many different aspects of Neovim, your workspace, LSP, and more!
      --
      -- The easiest way to use Telescope, is to start by doing something like:
      --  :Telescope help_tags
      --
      -- After running this command, a window will open up and you're able to
      -- type in the prompt window. You'll see a list of `help_tags` options and
      -- a corresponding preview of the help.
      --
      -- Two important keymaps to use while in Telescope are:
      --  - Insert mode: <c-/>
      --  - Normal mode: ?
      --
      -- This opens a window that shows you all of the keymaps for the current
      -- Telescope picker. This is really useful to discover what Telescope can
      -- do as well as how to actually do it!

      -- [[ Configure Telescope ]]
      -- See `:help telescope` and `:help telescope.setup()`
      require('telescope').setup {
        -- You can put your default mappings / updates / etc. in here
        --  All the info you're looking for is in `:help telescope.setup()`
        --
        -- defaults = {
        --   mappings = {
        --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
        --   },
        -- },
        -- pickers = {}
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }

      -- Enable Telescope extensions if they are installed
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      -- See `:help telescope.builtin`
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

      -- Slightly advanced example of overriding default behavior and theme
      vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, etc.
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      -- It's also possible to pass additional configuration options.
      --  See `:help telescope.builtin.live_grep()` for information about particular keys
      vim.keymap.set('n', '<leader>s/', function()
        builtin.live_grep {
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        }
      end, { desc = '[S]earch [/] in Open Files' })

      -- Shortcut for searching your Neovim configuration files
      vim.keymap.set('n', '<leader>sn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[S]earch [N]eovim files' })
    end,
  },
  -- LSP Plugins
  {
    -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true },
  {
    -- Main LSP Configuration
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs and related tools to stdpath for Neovim
      { 'williamboman/mason.nvim', config = true }, -- NOTE: Must be loaded before dependants
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',

      -- Useful status updates for LSP.
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Allows extra capabilities provided by nvim-cmp
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      -- Brief aside: **What is LSP?**
      --
      -- LSP is an initialism you've probably heard, but might not understand what it is.
      --
      -- LSP stands for Language Server Protocol. It's a protocol that helps editors
      -- and language tooling communicate in a standardized fashion.
      --
      -- In general, you have a "server" which is some tool built to understand a particular
      -- language (such as `gopls`, `lua_ls`, `rust_analyzer`, etc.). These Language Servers
      -- (sometimes called LSP servers, but that's kind of like ATM Machine) are standalone
      -- processes that communicate with some "client" - in this case, Neovim!
      --
      -- LSP provides Neovim with features like:
      --  - Go to definition
      --  - Find references
      --  - Autocompletion
      --  - Symbol Search
      --  - and more!
      --
      -- Thus, Language Servers are external tools that must be installed separately from
      -- Neovim. This is where `mason` and related plugins come into play.
      --
      -- If you're wondering about lsp vs treesitter, you can check out the wonderfully
      -- and elegantly composed help section, `:help lsp-vs-treesitter`

      --  This function gets run when an LSP attaches to a particular buffer.
      --    That is to say, every time a new file is opened that is associated with
      --    an lsp (for example, opening `main.rs` is associated with `rust_analyzer`) this
      --    function will be executed to configure the current buffer
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          -- NOTE: Remember that Lua is a real programming language, and as such it is possible
          -- to define small helper and utility functions so you don't have to repeat yourself.
          --
          -- In this case, we create a function that lets us more easily define mappings specific
          -- for LSP related items. It sets the mode, buffer and description for us each time.
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          -- Jump to the definition of the word under your cursor.
          --  This is where a variable was first declared, or where a function is defined, etc.
          --  To jump back, press <C-t>.
          map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')

          -- Find references for the word under your cursor.
          map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')

          -- Jump to the implementation of the word under your cursor.
          --  Useful when your language has ways of declaring types without an actual implementation.
          map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')

          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

          -- Rename the variable under your cursor.
          --  Most Language Servers support renaming across files, etc.
          map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction', { 'n', 'x' })

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

          -- The following two autocommands are used to highlight references of the
          -- word under your cursor when your cursor rests there for a little while.
          --    See `:help CursorHold` for information about when this is executed
          --
          -- When you move your cursor, the highlights will be cleared (the second autocommand).
          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
            local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
              end,
            })
          end

          -- The following code creates a keymap to toggle inlay hints in your
          -- code, if the language server you are using supports them
          --
          -- This may be unwanted, since they displace some of your code
          if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
            map('<leader>th', function()
              vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
            end, '[T]oggle Inlay [H]ints')
          end
        end,
      })

      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with nvim cmp, and then broadcast that to the servers.
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      -- Enable the following language servers
      --  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
      --
      --  Add any additional override configuration in the following tables. Available keys are:
      --  - cmd (table): Override the default command used to start the server
      --  - filetypes (table): Override the default list of associated filetypes for the server
      --  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
      --  - settings (table): Override the default settings passed when initializing the server.
      --        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
      local servers = {
        -- clangd = {},
        -- gopls = {},
        -- pyright = {},
        -- rust_analyzer = {},
        -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
        --
        -- Some languages (like typescript) have entire language plugins that can be useful:
        --    https://github.com/pmizio/typescript-tools.nvim
        --
        -- But for many setups, the LSP (`ts_ls`) will work just fine
        -- ts_ls = {},
        --

        lua_ls = {
          -- cmd = {...},
          -- filetypes = { ...},
          -- capabilities = {},
          settings = {
            Lua = {
              completion = {
                callSnippet = 'Replace',
              },
              -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
              -- diagnostics = { disable = { 'missing-fields' } },
            },
          },
        },
      }

      -- Ensure the servers and tools above are installed
      --  To check the current status of installed tools and/or manually install
      --  other tools, you can run
      --    :Mason
      --
      --  You can press `g?` for help in this menu.
      require('mason').setup()

      -- You can add other tools here that you want Mason to install
      -- for you, so that they are available from within Neovim.
      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        'stylua', -- Used to format Lua code
      })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            -- This handles overriding only values explicitly passed
            -- by the server configuration above. Useful when disabling
            -- certain features of an LSP (for example, turning off formatting for ts_ls)
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    init = function()
    vim.cmd.colorscheme 'tokyonight-day'
    vim.cmd.hi 'Comment gui=none'
    end,
  },
});

