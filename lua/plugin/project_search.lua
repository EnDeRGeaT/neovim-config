return {
    -- broken piece of shit
    "nvim-telescope/telescope-project.nvim",
    dependencies = { 'nvim-telescope/telescope.nvim', 'stevearc/oil.nvim'},
    config = function()
        -- local project_actions = require("telescope._extensions.project.actions")
        -- require('telescope').setup {
        --     extensions = {
        --         project = {
        --             on_project_selected = function(prompt_bufnr)
        --                 -- Do anything you want in here. For example:
        --                 project_actions.change_working_directory(prompt_bufnr, true)
        --                 vim.cmd({cmd = "edit", args = { vim.fn.getcwd() }})
        --             end
        --         }
        --     }
        -- }
        -- require('telescope').load_extension('project')
        -- vim.keymap.set('n', '<leader>sp', function ()
        --     require'telescope'.extensions.project.project{ display_type = 'full' }
        -- end)
    end
}
