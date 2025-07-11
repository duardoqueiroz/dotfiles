return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        insert = "gza", -- Insert mode
        insert_line = "gza", -- Insert mode (line)
        normal = "gz", -- Normal mode
        normal_cur = "gzc", -- Normal mode (cur line)
        normal_line = "gz", -- Normal mode (line)
        visual = "gz", -- Visual mode
        visual_line = "gz", -- Visual mode (line)
        delete = "gzd", -- Delete surrounding
        change = "gzc", -- Change surrounding
      },
    })
  end,
}
