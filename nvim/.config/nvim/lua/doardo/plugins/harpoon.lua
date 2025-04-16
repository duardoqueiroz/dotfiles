return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon_mark = require("harpoon.mark")
    local harpoon_ui = require("harpoon.ui")

    local keymap = vim.keymap
    keymap.set("n", "<leader>hm", function()
      harpoon_ui.toggle_quick_menu()
    end)
    keymap.set("n", "<leader>ha", function()
      harpoon_mark.add_file()
    end)

    for i = 1, 9 do
      keymap.set("n", "<leader>h" .. i, function()
        harpoon_ui.nav_file(i)
      end)
    end
  end,
}
