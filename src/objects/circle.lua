--- Properties of the circle object
-- most of these properties are optional !
--
-- a circle is a object used for drawing a circle
-- to your gui. which can be userful for styling your gui
--
-- @module object.circle

local properties = {}
local read_properties = {}

--- circle OBJECT CREATION PROPERTIES
-- @table creation_properties
-- @field x [number] the x position of the circle
-- @field y [number] the y position of the circle
-- @field radius[number] the radius of the circle
-- @field symbol [string] the symbol to draw the circle with
-- @field bg [number] the background color to draw the circle with
-- @field fg [number] the foreground color to draw the circle with
-- @field filled [boolean] sets whether the circle should be filled or not

return properties,read_properties