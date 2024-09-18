local function get_bufpath()
  return vim.fn.expand("%:p")
end

return {
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    build = ":ToggleTerm",

    keys = { { "<c-/>", "<cmd>ToggleTerm dir={bufpath}<cr>", desc = "Toggle floating terminal" } },
    opts = {
      open_mapping = [[<c-/>]],
      dir = get_bufpath(),
      direction = "horizontal",
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
    },
  },
}
