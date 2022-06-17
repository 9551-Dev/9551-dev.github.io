--- Properties of the triangle object
-- most of these properties are optional !
--
-- you can use the triangle object to draw triangles in your gui
-- you can use this for aesthetics.
--
-- @module object.triangle

local properties = {}
local read_properties = {}

--- triangle OBJECT CREATION PROPERTIES
-- @table properties
-- @field p1 [position] position of the first point of the triangle. this is an table looking like this {x,y}
-- @field p2 [position] position of the second point of the triangle. this is an table looking like this {x,y}
-- @field p3 [position] position of the third point of the triangle. this is an table looking like this {x,y}
-- @field bg [number] the background color to draw the triangle with
-- @field fg [number] the foreground color to draw the triangle with
-- @field symbol [string] the symbol to draw the triangle with
-- @field filled [boolean] sets whether the triangle should be filled or not

return properties,read_properties