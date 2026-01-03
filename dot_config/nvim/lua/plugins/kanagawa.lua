if true then
  return {}
end

return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      background = {
        dark = "wave",
        light = "lotus",
      },
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme  kanagawa")
    end,
  },
}
