--- Properties of the button object
-- most of these properties are optional !
--
-- a button a simple object that triggers a function uppon being clicked
-- while being simple it also has high graphic capabilities
--
-- @module object.button

local properties = {}
local read_properties = {}

--- button OBJECT CREATION PROPERTIES
-- @table creation_properties
-- @field x [number] the x position of the button
-- @field y [number] the y position of the button
-- @field width [number] the width of the button
-- @field height [number] the height of the button
-- @field text [@{guih.main_ui.text}] the text to put on the button
-- @field background_color [number] the color of the buttons background
-- @field text_color [number] the color of the symbols on the button (not the actual "text")
-- @field symbol [string]  the symbol to fill the background of the button with
-- @field tex [GuiH.texture] the texture to draw on the button
-- @field on_click [function] the function that gets ran when the button gets pressed (gets passed the object and the event as an argument)

return properties,read_properties