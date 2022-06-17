--- Properties of the ellipse object
-- most of these properties are optional !
--
-- a ellipse is an circle with adjustable radius'es
-- you can set the horizontal and vertical radius
--
-- @module object.ellipse

local properties = {}
local read_properties = {}

--- ellipse OBJECT CREATION PROPERTIES
-- @table creation_properties
-- @field x [number] the x position of the ellipse
-- @field y [number] the y position of the object
-- @field width[number] the horizontal radius of the ellipse
-- @field height[number] the vertical radius of the ellipse
-- @field symbol [string] the symbol to draw the circle with
-- @field bg [number] the background color to draw the circle with
-- @field fg [number] the foreground color to draw the circle with
-- @field filled [boolean] sets whether the circle should be filled or not

return properties,read_properties