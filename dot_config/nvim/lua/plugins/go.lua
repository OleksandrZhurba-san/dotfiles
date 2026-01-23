return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "go", "gomod" },
    config = function()
      require("go").setup({
        lsp_cfg = false,
        lsp_on_attach = false,
        lsp_inlay_hints = {
          enabled = false,
        },
      })
      local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", { clear = true })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        group = format_sync_grp,
        callback = function()
          require("go.format").goimports()
        end,
      })
    end,
  },
}
