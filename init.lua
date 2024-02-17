-- set startup directory based on os type to nvim-vanilla directory
local os_info = vim.loop.os_uname()

if os_info.sysname == "Linux" then
    -- For Linux
    local user = os.getenv("USER")
    local vanilla_config_path = "/home/" .. user .. "/.config/nvim-vanilla"
    vim.o.runtimepath = vim.o.runtimepath .. ',' .. vanilla_config_path
elseif os_info.sysname:match("Windows") or os_info.sysname:match("NT") then
    -- For Windows
    local user = os.getenv("USERNAME")
    local vanilla_config_path = "C:\\Users\\" .. user .. "\\AppData\\Local\\nvim-vanilla"
    vim.o.runtimepath = vim.o.runtimepath .. ',' .. vanilla_config_path
end



-- Require the main configuration files from the 'aditya' module
require('aditya.core')
-- Require the plugins from the 'aditya' module
require('aditya.plugins')
