--- Properties of the scrollbox object
-- most of these properties are optional !
--
-- a scrollbox is a field within the screen that changes is value
-- when you scroll between specified area
--
-- @module object.scrollbox

local properties = {}
local read_properties = {}

--- scrollbox OBJECT CREATION PROPERTIES
-- @table properties
-- @field x [number] the x position of the scrollbox
-- @field y [number] the y position of the scrollbox
-- @field width [number] the width of the scrollbox
-- @field height [number] the height of the scrollbox
-- @field limit_min [number] the minimum value of the scrollbox
-- @field limit_max [number] the maximum value of the scrollbox

--- scrollbox OBJECT READ PROPERTIES
-- @table read_properties
-- @field value [number] the current value of the scrollbox

return properties,read_properties