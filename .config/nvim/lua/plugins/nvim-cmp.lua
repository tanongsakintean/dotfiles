return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.completion.autocomplete = { require('cmp.types').cmp.TriggerEvent.TextChanged }
      -- opts.mapping["<CR>"] = nil
       -- ตั้งค่าปุ่มเพื่อยืนยันการเลือกตัวเลือก
      opts.mapping = {
        -- ใช้ Enter เพื่อยืนยันตัวเลือก
        ["<CR>"] = require("cmp").mapping.confirm({ select = true }),

        -- ใช้ Ctrl-n เพื่อเลือกถัดไป
        ["<C-n>"] = require("cmp").mapping(function(fallback)
          if require("cmp").visible() then
            require("cmp").select_next_item()
          else
            fallback()
          end
        end, { "i", "c" }),

        -- ใช้ Ctrl-p เพื่อเลือกก่อนหน้า
        ["<C-p>"] = require("cmp").mapping(function(fallback)
          if require("cmp").visible() then
            require("cmp").select_prev_item()
          else
            fallback()
          end
        end, { "i", "c" }),
      }
      opts.window = {
        completion = {
          border = {
            { "󱐋", "WarningMsg" },
            { "─", "Comment" },
            { "╮", "Comment" },
            { "│", "Comment" },
            { "╯", "Comment" },
            { "─", "Comment" },
            { "╰", "Comment" },
            { "│", "Comment" },
          },
          scrollbar = true,
          winblend = 0,
        },
        documentation = {
          border = {
            { "󰙎", "DiagnosticHint" },
            { "─", "Comment" },
            { "╮", "Comment" },
            { "│", "Comment" },
            { "╯", "Comment" },
            { "─", "Comment" },
            { "╰", "Comment" },
            { "│", "Comment" },
          },
          scrollbar = false,
          winblend = 0,
        },
      }
    end,
  },
}
--
--
--
-- return {
--   "hrsh7th/nvim-cmp",
--   event = "InsertEnter",
--   dependencies = {
--     "hrsh7th/cmp-buffer", -- source for text in buffer
--     "hrsh7th/cmp-path", -- source for file system paths
--     {
--       "L3MON4D3/LuaSnip",
--       -- follow latest release.
--       version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
--       -- install jsregexp (optional!).
--       build = "make install_jsregexp",
--     },
--     "saadparwaiz1/cmp_luasnip", -- for autocompletion
--     "rafamadriz/friendly-snippets", -- useful snippets
--     "onsails/lspkind.nvim", -- vs-code like pictograms
--   },
--   config = function()
--     local cmp = require("cmp")
--
--     local luasnip = require("luasnip")
--
--     local lspkind = require("lspkind")
--
--     -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
--     require("luasnip.loaders.from_vscode").lazy_load()
--
--     cmp.setup({
--       completion = {
--         completeopt = "menu,menuone,preview,noselect",
--       },
--       snippet = { -- configure how nvim-cmp interacts with snippet engine
--         expand = function(args)
--           luasnip.lsp_expand(args.body)
--         end,
--       },
--       mapping = cmp.mapping.preset.insert({
--         ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
--         ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
--         ["<C-b>"] = cmp.mapping.scroll_docs(-4),
--         ["<C-f>"] = cmp.mapping.scroll_docs(4),
--         ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
--         ["<C-e>"] = cmp.mapping.abort(), -- close completion window
--         ["<CR>"] = cmp.mapping.confirm({ select = false }),
--       }),
--       -- sources for autocompletion
--       sources = cmp.config.sources({
--         { name = "nvim_lsp"},
--         { name = "luasnip" }, -- snippets
--         { name = "buffer" }, -- text within current buffer
--         { name = "path" }, -- file system paths
--       }),
--
--       -- configure lspkind for vs-code like pictograms in completion menu
--       formatting = {
--         format = lspkind.cmp_format({
--           maxwidth = 50,
--           ellipsis_char = "...",
--         }),
--       },
--     })
--   end,
-- }
