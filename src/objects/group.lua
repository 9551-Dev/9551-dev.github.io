--- Properties of the group object
-- most of these properties are optional !
--
-- group is an object used for managing your ui
-- lets say you want to have several objects that you want to make invisible with just one line
-- well you put them in a group and then you make that group not be visible. easy
-- you can also use groups to make your ui code cleaner and more managed
--
-- @module object.group

local properties = {}
local read_properties = {}

--- group OBJECT CREATION PROPERTIES
-- @table properties
-- @field x [number] the starting x position of the group
-- @field y [number] the starting y position of the group
-- @field width [number] the starting width of the group
-- @field height [number] the starting height of the group
-- @field bef_draw [function] the function that gets ran when the logic.lua file of this group gets ran

--- group OBJECT READ PROPERTIES
-- @table read_properties
-- @field window [table] the standard window object for this group
-- @field gui [@{guih.main_ui}] the child gui thats in this group

return properties,read_properties