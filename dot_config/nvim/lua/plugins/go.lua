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
        lsp_cfg = true,
        lsp_on_attach = true,
        lsp_inlay_hints = false,
      })
    end,
  },
}
