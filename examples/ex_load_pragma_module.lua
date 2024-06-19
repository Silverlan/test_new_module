-- Example Lua script for loading the module.
-- To run this script, copy the Lua-file to "pragma/lua", then start a new game and run the following console command (without quotes):
-- "lua_exec_cl ex_load_pragma_module.lua"

local result = engine.load_library("pr_test")
if(result ~= true) then
    -- Module failed to load
    console.print_warning("Failed to load \"Test Module\" module: " .. r)
    return
end

-- The default module defines several demo Lua bindings in "src/pr_module.cpp", we can call them like so:
pr_test.print()

local d = pr_test.DemoClass()
d:PrintWarning("Hello World")
