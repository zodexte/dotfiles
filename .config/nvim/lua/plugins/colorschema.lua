return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_background = "medium"
    vim.cmd.colorscheme "gruvbox-material"
  end,
}
