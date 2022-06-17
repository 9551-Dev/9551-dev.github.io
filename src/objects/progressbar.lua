--- Properties of the progressbar object
-- most of these properties are optional !
--
--desc
--
-- @module object.progressbar

local properties = {}
local read_properties = {}

--- progressbar OBJECT CREATION PROPERTIES
-- @table properties
-- @field direction [string] the direction of the progressbar {progressbar_directions}
-- @field value [number] the percentage of the progressbar to be filled up
-- @field field_name [type] field_info
-- @field x [number] the x position of the progressbar
-- @field y [number] the y position of the progressbar
-- @field width [number] the width of the progressbar
-- @field height [number] the height of the progressbar
-- @field bg [number] the background color of the progressbar
-- @field fg [number] the foreground color of the progressbar
-- @field tex [guih.texture] the texture to put on the progressbar
-- @field drag_texture [boolean] sets whether the texture should be static or get dragged
-- @field tex_offset_x [number] the x offset of the texture
-- @field tex_offset_y [number] the y offset of the texture


--- the directions the progressbar can go in
-- @table progressbar_directions
-- @field direction1 left-right sets whether the progressbar should go from left to right
-- @field direction2 right-left sets whether the progressbar should go from right to left
-- @field direction3 top-down sets whether the progressbar should go from top to bottom
-- @field direction4 down-top sets whether the progressbar should go from bottom to top

return properties,read_properties