return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("tokyonight").setup({
            style = "storm",
            transparent = true,
            terminal_colors = true,
            styles = {
                comment = { italic = false },
                keywords = { italic = false },
                sidebars = "dark",
                floats = "dark"
            }
        })

        vim.cmd.colorscheme("tokyonight-storm")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}
