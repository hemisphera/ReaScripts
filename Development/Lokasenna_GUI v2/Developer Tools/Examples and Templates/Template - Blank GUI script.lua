-- NoIndex: true

--[[
	Lokasenna_GUI

	- Blank GUI template

]]--

local lib_path = reaper.GetExtState("Lokasenna_GUI", "lib_path_v2")
if not lib_path or lib_path == "" then
    reaper.MB("Couldn't load the Lokasenna_GUI library. Please run 'Set Lokasenna_GUI v2 library path.lua' in the Lokasenna_GUI folder.", "Whoops!", 0)
    return
end
loadfile(lib_path .. "Core.lua")()

--[[
    Require element classes here:
    
    GUI.req("Classes/Button.lua")()
    
]]--


-- If any of the requested libraries weren't found, abort the script.
if missing_lib then return 0 end




------------------------------------
-------- Window settings -----------
------------------------------------


GUI.name = "Example - Script template"
GUI.x, GUI.y, GUI.w, GUI.h = 0, 0, 400, 200
GUI.anchor, GUI.corner = "mouse", "C"


------------------------------------
-------- GUI Elements --------------
------------------------------------


--[[
    Create new elements here
]]--


GUI.Init()
GUI.Main()