return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>cf",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "black" },
      -- You can customize some of the format options for the filetype (:help conform.format)
      rust = { "rustfmt" },
      -- Conform will run the first available formatter
      javascript = { "prettier", "biome", stop_after_first = true },
      typescript = { "prettier", "biome", stop_after_first = true },
      typescriptreact = { "prettier", "biome", stop_after_first = true },
      javascriptreact = { "prettier", "biome", stop_after_first = true },
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
      markdown = { "prettier" },
      yaml = { "prettier" },
      xml = { "xmlformatter" },
      svg = { "xmlformatter", "prettier", stop_after_first = true },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 1000,
      lsp_format = "fallback",
    },
  },
}
