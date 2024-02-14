local Transparency = {}

Transparency.state = true

function Transparency.ColorMyBackground()

    vim.cmd [[colorscheme torte]]
end

function Transparency.UnColorMyBackground()

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

function Transparency.changeState()

	Transparency.state = not Transparency.state
end

-- change transparency to opaque after user changes color scheme
function Transparency.changeToOpaqueAfterColorChange()

	if Transparency.state then
		Transparency.state = false
	end
end

function Transparency.toggle()

	Transparency.changeState()

	if Transparency.state then
		Transparency.UnColorMyBackground()
	else 
		Transparency.ColorMyBackground()
	end
end

function Transparency.applyOnSplits()

	if Transparency.state then
		Transparency.UnColorMyBackground()
	end
end


return Transparency
