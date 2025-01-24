return {
  'stevearc/overseer.nvim',
  opts = {},
  config = function ()
      require('overseer').setup({
          component_aliases = {
              -- Most tasks are initialized with the default components
              default = {
                  { "display_duration", detail_level = 2 },
                  "on_output_summarize",
                  "on_exit_set_status",
                  "on_complete_notify",
                  "on_result_diagnostics",
                  { "on_result_diagnostics_quickfix", open = true},
                  { "open_output", direction = "horizontal", focus = true}
              },
              -- Tasks from tasks.json use these components
              default_vscode = {
                  "default",
                  "on_result_diagnostics",
              },
          },
          templates = {"builtin"}
      })
      vim.keymap.set('n', '<leader>tt', [[:OverseerToggle<cr>]], {desc = '[T]ask [T]oggle'})
      vim.keymap.set('n', '<leader>tn', [[:OverseerBuild<cr>]], {desc = '[T]ask [N]ew'})
      vim.keymap.set('n', '<leader>tr', [[:OverseerQuickAction restart<cr>]], {desc = '[T]ask [R]estart'});
      vim.keymap.set('n', '<leader>ts', [[:OverseerRunCmd ]], {desc = '[T]ask [S]hell'});
      vim.keymap.set('n', '<leader>tq', [[:OverseerQuickAction open output in quickfix<cr>]], {desc = '[T]ask [Q]uickfix'});
  end
}
