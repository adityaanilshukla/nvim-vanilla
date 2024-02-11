-- require('rose-pine').setup({
--     disable_background = true
-- })
--
-- function ColorMyPencils(color)
-- 	color = color or "rose-pine"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- ColorMyPencils()
--


function ColorMyPencils(color)

	require('rose-pine').setup({
	disable_background = true
	})

    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- Set the background of various highlight groups to transparent
    local hl_groups = { "Normal", "NormalFloat", "NormalNC" }
    for _, hl_group in ipairs(hl_groups) do
        vim.api.nvim_set_hl(0, hl_group, { bg = "none" })
    end
end

ColorMyPencils()


