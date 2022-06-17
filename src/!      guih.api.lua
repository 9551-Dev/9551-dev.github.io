--- The Main module 
-- @module guih

local guih = {} 

--- Make a new Gui object with the given terminal/window
--- and optionaly event offset
-- @tparam table terminal term/window object
-- @tparam[opt] number event_offset_x sets the horizontal offset of all events
-- @tparam[opt] number event_offset_y sets the vertical offset of all events
-- @treturn table guih.main_ui
-- @usage
-- local GuiH = require("GuiH")
-- local gui = guih.new(term.current())
-- print(gui)
function guih.new(terminal,event_offset_x,event_offset_y)
end


--- Alias for guih.new
-- @see guih.new
function guih.create_gui()
end

--- Used for loading basic textures
--- similiar to the nimg format
-- @tparam string/table path Path to the texture or the texture data in a table
-- @treturn table guih.texture
-- @usage
-- local GuiH = require("GuiH")
-- local texture = guih.load_texture({})
-- print(texture)

function guih.load_texture(path)
end

--- Processes an event into a more usable format
-- @param event all of the events results unpacked
-- @treturn table guih.event
function guih.convert_event(event)
end

--- All of the additional GuiH apis loaded
-- @see modules
-- @field[readonly] guih.apis
guih.apis = {}

--- All of the additional GuiH presets loaded
-- @see presets
-- @field[readonly] guih.presets
guih.presets = {}

return guih