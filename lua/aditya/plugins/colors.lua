local Transparency = {}

Transparency.state = true
Transparency.backgroundColor = 0

function Transparency.ColorMyBackground()
    color = color or "rose-pine"
    vim.cmd("colorscheme " .. color)

    -- Define the highlight groups to change
    local hl_groups = { "Normal", "NormalFloat", "NormalNC" }

    -- Apply the background color to the specified highlight groups
    for _, hl_group in ipairs(hl_groups) do
        -- Ensure Transparency.backgroundColor is a valid value before using it
        if type(Transparency.backgroundColor) == 'number' then
            vim.api.nvim_set_hl(0, hl_group, { bg = Transparency.backgroundColor })
        end
    end
end

function Transparency.UnColorMyBackground()
    color = color or "rose-pine"
    vim.cmd("colorscheme " .. color)

    -- Retrieve the background color from the 'Normal' highlight group
    -- before changing it to transparent
    local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)

    -- Check if 'normal_hl' has a valid 'background' property
    if normal_hl and normal_hl.background and normal_hl.background ~= 0 then
        Transparency.backgroundColor = normal_hl.background
    end

    require('rose-pine').setup({
        disable_background = true
    })

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
