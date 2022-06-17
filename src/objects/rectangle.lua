--- Properties of the rectangle object
-- most of these properties are optional !
--
-- rectangle is used for drawing styled rectangles and boxes in your gui
-- you can use it to give your gui a nicer look by for example adding borders around your objects
--
-- @module object.rectangle

local properties = {}
local read_properties = {}

--- rectangle OBJECT CREATION PROPERTIES
-- @table properties
-- @field x [number] the x position of the rectangle
-- @field y [number] the y position of the rectangle
-- @field width [number] the width of the rectangle
-- @field height [number] the height of the rectangle
-- @field color [number] the color of the rectangle
-- @field symbols [table] a custom style for the rectangle. you can make your own or use the existing ones at @{guih.presets.rect}

return properties,read_properties