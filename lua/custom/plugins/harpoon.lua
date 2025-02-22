return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {},
    config = function()
      local harpoon = require 'harpoon'
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = '[A]dd to harpoon' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Edit/View harpoon list' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end, { desc = 'Previous harpoon' })
      vim.keymap.set('n', '<C-S-N>', function()
        harpoon:list():next()
      end, { desc = 'Next harpoon' })
    end,
  },
}
